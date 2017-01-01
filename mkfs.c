#include<stdio.h>
#include<time.h>
#include<memory.h>
#include<string.h>
#include<stdlib.h>

#define EXTERN

#include "h/superblock.h"
#include "h/inode.h"
#include "h/type.h"
#define  SUPER_BLOCK  2
#define  BLOCK_SIZ   4096
#define  SECT_SIZ    512
#define  SUPER_BLOCK_V3  0x4d5a
#define ROOT_DIR_TYPE  0x41ff
#define FIRST_ZONE  0x10
#define MAX_ZONE_NUMBER  10


int main( int argc,  char** argv)
{
    FILE  *fp;
    int i;
    struct  super_block  superblock;
    struct d_inode  root;
    struct direct  currentdir , predir;
    char buf[32];
    time_t  timer;    /* the orign define by c lib */
    if ( argc < 2 ) {
        printf("Usage: %s virt_img(1.44M)\n",argv[0]);
        exit(0);
    }
    fp = fopen (argv[1],"rb+");
    if ( fp == NULL ) {
        printf("could not open file %s\n",argv[1]);
        exit(0);
    }
    timer  = time(NULL);
    /* init to zero */
    memset(buf, 0 , sizeof(buf) );
    memset(&superblock, 0 , sizeof(struct super_block));
    memset(&root, 0, sizeof(struct d_inode ));
    /* make a file system that compatible with minix3 system */
    superblock.s_ninodes = 0x300 ;
    superblock.s_nzones  = 0 ;
    superblock.s_magic   =  SUPER_BLOCK_V3;
    superblock.s_imap_blocks  = 1 ;
    superblock.s_zmap_blocks  = 1 ;
    superblock.s_firstdatazone =FIRST_ZONE ;
    superblock.s_log_zone_size = 0;
    superblock.s_zones = 0x168;
    superblock.s_max_size = 0x7fffffff;
    superblock.s_block_size = 0x1000;
    fseek(fp, SUPER_BLOCK*SECT_SIZ,0);
    fwrite(&superblock, sizeof(struct super_block) , 1,  fp );

    /*  make root inode */
    root.d_mode = ROOT_DIR_TYPE ;
    root.d_nlinks = 0x2;
    root.d_uid = 2 ;
    root.d_gid = 2;
    root.d_size =0x80;
    root.d_atime = 0;
    root.d_mtime = timer;
    root.d_ctime = 0;
    for ( i = 0 ; i < MAX_ZONE_NUMBER ; i++ ) {
        root.d_zone[i] = 0 ;
    }
    root.d_zone[0] = FIRST_ZONE ;
    fseek(fp, (SUPER_BLOCK+2)*BLOCK_SIZ , 0);
    fwrite(&root, sizeof(struct d_inode) , 1, fp);

    /* make inode map and zone map   */
    fseek(fp, (SUPER_BLOCK)*BLOCK_SIZ, 0);
    buf[0] = 3;
    fwrite(buf,sizeof(buf) , 1, fp );
    fseek(fp, (SUPER_BLOCK+1)*BLOCK_SIZ, 0);
    fwrite(buf , sizeof(buf) , 1 , fp );
    /*  make directory item */
    currentdir.d_ino = 1 ;
    strncpy(currentdir.d_name, ".", sizeof(currentdir.d_name));
    predir.d_ino = 1 ;
    strncpy(predir.d_name, "..", sizeof(predir.d_name));
    fseek(fp, FIRST_ZONE*BLOCK_SIZ, 0);
    fwrite(&currentdir ,  sizeof(struct direct) , 1 ,fp);
    fwrite(&predir , sizeof(struct direct) , 1 , fp);
    buf[0] =  0x2f;
    buf[1] = 0x1f;
    /*the last 2 bytes should write this , i could not know why, but the minix3 file system have write this, so just be compatible*/
    fseek(fp, 0x167ffe, 0);
    fwrite(buf, 2, 1,  fp);
    fclose(fp);
    printf("mkfs success!\n");
    return 0;
}
