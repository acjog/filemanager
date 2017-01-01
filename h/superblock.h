#ifndef _SUPERBLOCK_H_
#define _SUPERBLOCK_H_
/* although i don't need so much, it is also compatible with minix
 * file system, and some type are defined in types.h, but i am happy
 * that  some types are already defined  in linux. :) . finally, the
 *  disk layout is:
 *   Item             #blocks
 *   boot   block       1
 *   unused block       1  ( for parameters that os used)
 *   super  block       1  (offset 1kb)
 *   inode  map         s_imap_blocks
 *   zone   map         s_zmap_blocks
 *   inodes            (s_ninodes+"inodes per block"-1)/"inodes per block"
 *   unused           whatever is need to fill out the current zone (4kb)
 *   data  zone       (s_zones-s_firstdatazone)<< s_log_zone_size
 */
#include "type.h"
#define IMAP  0
#define ZMAP  1
#define START_BLOCK  2
#define spsiz_disk  ( sizeof(ino1_t)+ 2*sizeof(zone1_t)+5*sizeof(u16_t)\
+sizeof(off1_t)+sizeof(u32_t) )

struct super_block {
    ino1_t   s_ninodes;          /* used inodes*/
    zone1_t  s_nzones;           /*total device size, including bit maps etc*/
    u16_t    s_imap_blocks;      /*blocks of inode bit map */
    u16_t    s_zmap_blocks;      /*blocks of zone bit map*/
    zone1_t  s_firstdatazone;    /*number of the first data zone*/
    u16_t     s_log_zone_size;    /*log2 blocks/zones */
    u16_t     s_pad;              /*unused*/
    off1_t   s_max_size;         /*maximun file size on this device*/
    u32_t    s_zones;            /*number f zones*/
    u16_t    s_magic;            /*magic number*/
    /*following not used*//* copy from command.c 2012 1-20 10:42  */
    short  s_pad2;
    unsigned  short s_block_size;
    char  s_disk_version;
    struct inode *s_isup;
    struct inode *s_imount;
    unsigned  s_inodes_per_block;
    dev1_t   s_dev;           /* device number  */
    int    s_rd_only;
    int    s_native;
    int    s_version;
    int    s_ndzones;
    int    s_nindirs;
    bit_t  s_isearch;        /* could use    */
    bit_t  s_zsearch;        /* could use    */
};

extern struct super_block * getsuper(dev1_t );
extern bit_t  alloc_bit(struct super_block *, int , bit_t);
extern void   free_bit(struct super_block *, int , bit_t);

#endif
