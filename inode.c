#include "h/fm.h"
#include <memory.h>
/**/
void init_inode()
{
    memset(inode,0,sizeof(inode));
}

/* get the inode which number is ino*/
struct inode* get_inode(dev1_t dev,  ino1_t ino)
{
    struct inode *idle = NULL ;
    register  struct inode *ip = &inode[FIRST_INODE];
    for ( ; ip < &inode[END_INODE] ; ip++) {
        if ( ip->i_dev == dev && ip->i_num == ino  ) {
            if ( ip->i_count == NO_USE  ) {
                rw_inode(ip,WRITING);
            }
            ip->i_count++;
            return ip;
        }
        if ( idle == NULL && ip->i_dev == NO_DEV  ) {
            idle = ip ;
        }
        if ( idle == NULL && ip->i_count == NO_USE) {
            idle = ip;
        }

    }
    if ( idle == NULL ) {
        printf(" idle counld not find! \n");
        exit(0);
    }
    /* set some value to inode */
    idle->i_dev = dev;
    idle->i_num = ino;
    idle->i_count++;
    rw_inode(idle,READING);
    return idle;

}

void put_inode( struct inode* ip)
{
    ip->i_count--;
    rw_inode(ip,WRITING);
    if ( ip->i_count == NO_USE ) {
        rw_inode(ip,WRITING);
    }
}


struct inode* alloc_inode( dev1_t dev)
{
    struct inode *ip;
    struct super_block *sp = getsuper(dev);
    bit_t  inum = alloc_bit(sp,IMAP,sp->s_isearch);
    ip = get_inode(dev,inum-1);
    return ip;
}

void free_inode( dev1_t dev, ino1_t inumb)
{
    register struct inode *ip;
    struct super_block *sp = getsuper(dev);
    ip = get_inode( dev , inumb);
    if ( ip != NULL ) {
        memset(ip , 0 , sizeof( struct inode ) );
        ip->i_dev = dev ;
        ip->i_num = inumb;
        rw_inode( ip , WRITING );
        inumb++;
        free_bit(sp,IMAP,inumb);
    }
    return ;
}

/* you should be careful with the inode number, there is reason starts 0 or 1 */
void rw_inode(struct inode *ip , u8_t rw_flag)
{
    struct buf *bp;
    struct super_block *sp;
    struct d_inode *dp; /*disk node pointer*/
    block1_t block;
    u32_t  index;
    dev1_t dev = ip->i_dev;
    ino1_t inum = ip->i_num;
    inum--;
    sp = getsuper(dev);
    block  =  inum / sp->s_inodes_per_block;
    index =  inum - block* (sp->s_inodes_per_block);
    block  += START_BLOCK + sp->s_imap_blocks + sp->s_zmap_blocks;
    bp    = get_block(dev,block);  /* get the block buffer block */
    dp    =  &(bp->b.b_dinode[index]);
    if ( rw_flag == READING  ) {
        ip->i_mode   =  dp->d_mode;
        ip->i_nlinks =  dp->d_nlinks;
        ip->i_uid    =  dp->d_uid;
        ip->i_gid    =  dp->d_gid;
        ip->i_size   =  dp->d_size;
        ip->i_atime  =  dp->d_atime;
        ip->i_mtime  =  dp->d_mtime;
        ip->i_ctime  =  dp->d_ctime;
        u8_t i;
        for( i = 0 ; i < NR_ZONES ; i++ ) {
            ip->i_zone[i] =  dp->d_zone[i];
        }
    }
    if ( rw_flag == WRITING ) {
        dp->d_mode   = ip->i_mode;
        dp->d_nlinks = ip->i_nlinks;
        dp->d_uid    = ip->i_uid;
        dp->d_gid    = ip->i_gid;
        dp->d_size   = ip->i_size;
        dp->d_atime  = ip->i_atime;
        dp->d_mtime  = ip->i_mtime;
        dp->d_ctime  = ip->i_ctime;
        u8_t i;
        for ( i = 0 ; i < NR_ZONES ; i++ ) {
            dp->d_zone[i] = ip->i_zone[i];
        }
        bp->b_dirt = 1;
    }
    put_block(bp,INODE_BLOCK);
}
