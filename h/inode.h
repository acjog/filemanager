#ifndef _INODE_H_
#define _INODE_H_

#ifndef  DIRSIZ
#define  DIRSIZ  60
#endif
#include "type.h"
struct direct {
    ino1_t   d_ino;            /*inode number */
    char   d_name[DIRSIZ];    /*file  name  */
};
#define FIRST_INODE 0
#define END_INODE 30
#define NR_ZONES  10
#define NR_INODES  30
/*to make it as this,just to be compatible with the minix file system*/
struct d_inode {
    u16_t   d_mode;           /* file type,  protection ,etc*/
    u16_t   d_nlinks;         /* how many links to this file*/
    u16_t   d_uid;            /*user  id of the owner*/
    u16_t   d_gid;            /*group id */
    off1_t   d_size;           /*current file size in bytes*/
    time_t  d_atime;          /* three time not use*/
    time_t  d_mtime;
    time_t  d_ctime;
    u32_t    d_zone[NR_ZONES]; /*block nums for direct,ind, and db1 ind*/
};

/* inode in memory */
EXTERN struct inode {
    u16_t   i_mode;           /* file type,  protection ,etc*/
    u16_t   i_nlinks;         /* how many links to this file*/
    u16_t   i_uid;            /*user  id of the owner*/
    u16_t   i_gid;            /*group id */
    off1_t   i_size;           /*current file size in bytes*/
    time_t  i_atime;          /* three time not use*/
    time_t  i_mtime;
    time_t  i_ctime;
    u32_t    i_zone[NR_ZONES]; /*block nums for direct,ind, and db1 ind*/
    /* the following are not in disk , it's in memory */
    dev1_t  i_dev;           /* which device is the inode on */
    ino1_t  i_num;           /* inode number on its minor device */
    u32_t   i_count;         /* how many times it use */
    u8_t    i_dirty;         /* clean or dirty */
    struct super_block *i_sp;  /*  pointer to inode device , not used*/
} inode[NR_INODES];

extern  void inode_init();
extern  struct inode *get_inode(dev1_t , ino1_t);
extern  void put_inode(struct inode*);
extern  struct inode* alloc_inode(dev1_t);
extern  void free_inode(dev1_t,ino1_t);
extern  void rw_inode(struct inode*, u8_t);
#endif

