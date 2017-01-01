#include "h/fm.h"

void rm_lru(struct buf*);
void rw_block(struct buf*,int);
void flushall(dev1_t dev);
//设备上获得一块，块号是从0开始
struct buf*  get_block(dev1_t dev,  block1_t  block )
{
    // 对于设备号dev，并没有做什么检测。但最好保留这个参数在这里
    u8_t flag = 0 ;
    struct buf *p,*pre;
    u32_t hash_value = block & HASH_MASK;
    p = buf_hash[hash_value];
    // 在hash chain上面搜索
    while ( p != NULL ) {
        if ( p->b_blocknr == block && p->b_dev == dev ) {
            if ( p->b_count <= 0 ) {
                rm_lru(p);       // 回写到设备
            }
            p->b_count ++;
            return  p;
        }
        p = p->b_hash_next;
    }
    if ( ( p = front ) == NULL  ) {
        printf("No buf to use!\n");
        getchar();
        exit(0);
    }
    //移除hash chain p , 为空闲链表头 对于b_blocknr可能有值，若没有值则为零。
    //若为0xffffffff 则表示该块空闲
    if ( p->b_blocknr != 0xffffffff ) {
        hash_value = p->b_blocknr & HASH_MASK;
        pre = buf_hash[hash_value];
        if ( pre == p ) {
            buf_hash[hash_value] = p->b_hash_next;
        } else {
            while( pre->b_hash_next != NULL ) {
                if ( pre->b_hash_next == p ) {
                    /*  find it */
                    pre->b_hash_next = p->b_hash_next;
                    break;
                }
                pre = pre->b_hash_next;
            }
        }
    }
    /* only left ont to use */
    if ( front == rear ) {
        rear = NULL;
    }
    front = front->b_next;  /* move the front pointer*/
    front->b_prev = NULL;
    /* if p pointer a dirty data, then write back*/
    if ( p->b_dirt == DIRTY  ) {
        rw_block(p,WRITING);
        p->b_dirt = CLEAN;
    }
    /* set value */
    p->b_dev = dev;
    p->b_blocknr = block;
    /* read data from disk */
    rw_block(p , READING );
    p->b_count = 1;
    /* add into the hash chain */
    hash_value = block & HASH_MASK;
    p->b_hash_next = buf_hash[hash_value];
    buf_hash[hash_value] = p;
    return p;
}

/** type = 0 put start , 1 put end */
void put_block(struct buf * bp, int type)
{
    bp->b_count--;
    struct buf *pre, *next;
    /* no one to use the block,put into lru chain  */
    if( bp->b_count == NO_USE ) {
        /* put at the tail */
        if ( type == INODE_BLOCK || type == DIR_BLOCK  ) {
            pre = rear;
            next = NULL  ;
            bp->b_prev = pre;
            bp->b_next = next;
            if ( rear == NULL ) {
                front = bp;
            }
            rear = bp;
        } else {
            /* put at head  */
            pre = NULL ;
            next = front;
            bp->b_prev = pre;
            bp->b_next = next;
            if ( front == NULL ) {
                rear = NULL;
            }
            front = bp;
        }
        rw_block(bp, WRITING);
        bp->b_dirt = CLEAN ;
    }
}

zone1_t  alloc_zone( dev1_t dev, u32_t z )
{
    zone1_t zone;
    struct super_block *sp = getsuper(dev);
    zone = alloc_bit(sp,ZMAP,z);
    if ( zone == NON_INODE  ) {
        printf(" call alloc_bit fail !\n");
        exit(0);
    }
    return zone -2 + sp->s_firstdatazone ;
}

void free_zone(dev1_t dev, u32_t z)
{
    struct super_block *sp = getsuper(dev);
    z = z + 2  - sp->s_firstdatazone ;
    printf("free zone %d:\n",z);
    if ( z < sp->s_zsearch ) {
        sp->s_zsearch = z ;
    }
    free_bit(sp,ZMAP,z);
}

/* 0-reading or  1-writing block */
void rw_block(struct buf *bp, int rw_flag)
{
    u32_t offset = bp->b_blocknr * BLOCK_SIZ;
    FILE *fp = fopen(devname, "rwb+");
    if( fp == NULL ) {
        exit(0);
    }
    /* skip the offset bytes */
    fseek(fp,offset,0);
    /* if reading */
    if ( rw_flag == READING  ) {
        bp->b_dirt = 0;
        fread(bp->b.b_data,BLOCK_SIZ,1,fp);
    }
    /* or writing */
    if ( rw_flag == WRITING ) {
        fwrite(bp->b.b_data,BLOCK_SIZ,1,fp);
        bp->b_dirt = 0;
    }
    fclose(fp);
}

/* flush all block at dev */
void flushall( dev1_t dev )
{
    register struct buf *bp;
    for( bp = &buf[0]; bp < &buf[NR_BUFS]; bp++ ) {
        if ( bp->b_dev ==  dev && bp->b_dirt == DIRTY ) {
            rw_block( bp , WRITING );
        }
    }
}

/* remove from lru chain */
void rm_lru(struct buf *bp)
{
    /* if dirty write back */
    register struct buf *pre,*next;
    if ( bp->b_dirt == DIRTY  ) {
        rw_block(bp,WRITING);
        bp->b_dirt = CLEAN ;
    }
    /* modify the prev and next pointer*/
    pre = bp->b_prev;
    next = bp->b_next;
    /* three case to code */
    if ( pre ) {
        pre->b_next = next;
    } else {
        front = next;
        pre = front;
    }
    if ( next  ) {
        next->b_prev = pre;
    } else {
        rear = pre;
    }
}

void zero_block( struct buf *bp )
{
    memset( bp->b.b_data, 0 , sizeof(bp->b.b_data) );
    bp->b_dirt = DIRTY;
}
