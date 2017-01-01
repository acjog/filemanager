#include "h/fm.h"
/* just do little thing, provide a interface */
struct super_block* getsuper( dev1_t dev )
{
    return &superblock;
}

#define MAP_BLOCK    3
#define START_BLOCK   2
/* inode map = 0 , zone map =1 */
bit_t  alloc_bit(struct super_block *sp , int map , bit_t origin  )
{
    /* alloc a bit at the start place origin , map indicate the type : inode map or zone map  */
    block1_t  block;
    u32_t  count;
    u32_t *word_ptr, start = (origin-1) / (8*sizeof(u32_t)), end = BLOCK_SIZ - sizeof(u32_t);
    u8_t  *byte_ptr;
    bit_t  ret;
    dev1_t dev = sp->s_dev;
    struct buf *bp;
    if ( map == IMAP ) {
        block = START_BLOCK;
    } else if ( map == ZMAP ) {
        block = START_BLOCK + 1;
    }
    bp = get_block(dev,block);
    if ( bp == NULL ) {
        printf("get_block fail\n");
        exit(0);
    }
    word_ptr = (u32_t*) &(bp->b.b_bitmap[start]);
    /* travel the block  at most BLOCK_SIZ/4  times */
    for ( count = 0; count < BLOCK_SIZ/sizeof(u32_t) ; count++) {
        if ( *word_ptr ==(u32_t) ~0) {
            word_ptr++;
            if ( word_ptr > (u32_t*)&(bp->b.b_bitmap[end]) ) {
                word_ptr = (u32_t*) &(bp->b.b_bitmap[0]);
            }
            continue;
        }
        for ( byte_ptr = (u8_t*)word_ptr; byte_ptr < (u8_t * ) (word_ptr+1); byte_ptr++ ) {
            if ( *byte_ptr == (u8_t)~0 ) {
                continue;
            } else {
                u8_t i;
                ret = ( word_ptr - (u32_t*) &(bp->b.b_bitmap[0]) )*32;
                for ( i = 0 ; (*byte_ptr & 1<<i) ; i++) ;
                *byte_ptr = *byte_ptr | ( 1 << i );
                /* add 1 */
                ret += ( byte_ptr - (u8_t*)word_ptr)*8 + i + 1;
                bp->b_dirt = DIRTY;
                put_block(bp, MAP_BLOCK);
                return ret;
            }
        }
    }
    put_block(bp, MAP_BLOCK);
    return 0;
}

void   free_bit(struct super_block *sp, int map, bit_t  bit_releas)
{
    dev1_t dev = sp->s_dev;
    struct buf* bp ;
    u8_t  count = (bit_releas -1 )/8,  i = bit_releas -1 - count*8;
    u8_t *byptr;
    block1_t block;
    if ( map == IMAP ) {
        block = START_BLOCK ;
    }
    if ( map == ZMAP ) {
        block = START_BLOCK + 1;
    }
    bp = get_block(dev,block);
    if ( bp == NULL ) {
        printf("call get_block fail at super.c file\n");
        exit(0);
    }
    byptr = (u8_t *)&(bp->b.b_bitmap[count]);
    *byptr = (*byptr) & ( ~(1<<i));
    rw_block(bp, WRITING);
    put_block(bp,MAP_BLOCK);
}
