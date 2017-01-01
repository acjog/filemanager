/******************************************************************
 *   filemanage.c
 *   file manage  for ls current diret,change dir , del file ,
 *   add file command  etc
 *****************************************************************/
#include "h/fm.h"
#define TRUE  1

int  exec_file  = 0 ;

int main(int argc,  char**  argv)
{
    FILE *fp , *fp_in ;
    /* normal check  for parameters */
    if ( argc <  2 ) {
        printf("Usage: %s vir_img !\n", argv[0] );
        exit(0);
    }
    fp = fopen( argv[1], "rb+");
    if ( fp == NULL ) {
        printf("请检查输入的参数!\n");
        exit(0);
    }
    //  打开默认的执行脚本
    if ( 3 == argc ) {
        fp_in = fopen ( ".fmrc","r") ;
        if ( NULL !=  fp_in ) {
            fclose( fp_in ) ;
            freopen( ".fmrc", "r", stdin ) ;
            exec_file =  1 ;
        }
    }
    /* ignore two block which used for boot block and parameter block */
    fseek (fp , 2*SECT_SIZ , 0 );
    memset( &superblock , 0 , sizeof(superblock) );
    fread (&superblock, sizeof(superblock)  ,1, fp);
    fclose(fp);
    superblock.s_firstdatazone = 0x10;
    superblock.s_inodes_per_block = DINODE_BLOCK_SIZE ;
    superblock.s_dev = ROOT_DEV;
    superblock.s_block_size = BLOCK_SIZ;
    superblock.s_isearch  =  1;
    superblock.s_zsearch  =  1;
    /*set current path */
    memset(currentpath,0,sizeof(currentpath));
    strcpy(currentpath,"/");
    /* check if correct file system */
    if ( superblock.s_magic !=  SUPER_BLOCK_V3 ) {
        printf("check super_block_v3 error. device: %x v3:%x\n", superblock.s_magic, SUPER_BLOCK_V3);
        exit(0);
    }
    strcpy(devname,argv[1]);

    /* buf init  */
    buf_init();
    init_inode();
    /*the main loop */
    while ( TRUE ) {
        memset(commandline,0,sizeof(commandline));
        int  select =  menu();
        switch ( select ) {
        case 0: {        /*ls dir */
            ls(commandline);
            break;
        }
        case 1: {       /*chang dir*/
            cd(commandline);
            break;
        }
        case 2: {       /*del a file */
            del(commandline);
            break;
        }
        case 3: {      /*add a new file in current direct*/
            add(commandline);
            break;
        }
        case 4: {       /*creat a dir in current direct*/
            mkdir(commandline);
            break;
        }
        case 5: {
            help();     /* display someinformation*/
            break;
        }

        case 6: {       /* quit the program*/
            quit();
            break;
        }
        default:        /*just do nothig,to make it easy
                                    understand          */
            nothing();
        }
    }
    return 0;
}

/* *****************************************************
 * why it need two direction chain ? it take time to cal
 *  when you got the end, if you need the prev poiter, then it works
 **/
void buf_init()
{
    bufs_in_use = 0;
    front = &buf[0];
    rear = &buf[NR_BUFS-1];
    register struct buf* bp;
    for (bp = &buf[0] ; bp < &buf[NR_BUFS] ; bp++ ) {
        bp->b_blocknr = NO_BLOCK;
        bp->b_dev = NO_DEV;
        bp->b_hash_next = bp + 1;
        bp->b_next = bp + 1;
        bp->b_prev = bp - 1;
    }
    buf[0].b_prev = NULL;
    buf[NR_BUFS-1].b_next = NULL;
    buf[NR_BUFS -1].b_hash_next = NULL;
    /* hash chain */
    memset(buf_hash,0,sizeof(buf_hash));
    for ( bp = front ; bp != NULL ; bp = bp->b_next  ) {
        bp->b_blocknr = 0xffffffff ;
    }
    return ;
}
