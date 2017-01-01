#ifndef _BUFFER_H_
#define _BUFFER_H_
#include "inode.h"
#include "type.h"
#define  NR_BUFS  64
#define  MAX_BLOCK_SIZE  4096
#define  MAX_DIR_SIZE  64
#define  INDIRE_BLOCK_SIZE   1024
#define  DINODE_BLOCK_SIZE  ( 4096/sizeof(struct d_inode  )  )
#define  MAX_BITMAP_BLOCK_SIZE  4096
EXTERN struct buf {
    union {
        /*  ordinary user data */
        char       b_data[MAX_BLOCK_SIZE];
        /*  directory  block */
        struct direct  b_dir[MAX_DIR_SIZE];
        /* indirect block */
        u32_t      b_ind[INDIRE_BLOCK_SIZE];
        /* d_inode  block */
        struct d_inode   b_dinode[DINODE_BLOCK_SIZE];
        /* bit map block  */
        bit_chunk    b_bitmap[MAX_BITMAP_BLOCK_SIZE];
    } b;
    /*header  portion of buffer */
    struct buf *b_next;  /* used to link all free bufs */
    struct buf *b_prev;  /* oher way of buf chain */
    struct buf *b_hash_next;  /* hash chains */
    block1_t    b_blocknr; /* block number of its minor number  */
    dev1_t      b_dev;   /*  major | minor device , not used*/
    char     b_dirt;  /* the buf dirty or clean */
    char     b_count; /* number of users of the buffer*/
} buf[NR_BUFS];

EXTERN struct buf *front;  /* the least recently used free block */
EXTERN struct buf *rear;   /* the most recently used free block */
EXTERN int    bufs_in_use;  /* numbers of buf in use */
#define NR_BUF_HASH  128
#define HASH_MASK    (NR_BUF_HASH -1 )
EXTERN struct buf *buf_hash[NR_BUF_HASH];

void put_block(struct buf*, int);
void zero_block(struct buf *);
struct buf* get_block(dev1_t,block1_t);
void rm_lru(struct buf* );
void flushall( dev1_t  );
void rw_block(struct buf *, int );
void free_zone(dev1_t , u32_t );
zone1_t  alloc_zone( dev1_t, u32_t);
#endif
