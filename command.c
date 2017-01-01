#include "h/fm.h"

#define COM_NR  7
#define PARA_SIZE  25

static char  commandname[COM_NR][12]= {"ls","cd","del","add","mkdir","help","quit"};

/* when use the ls or cd command, you will find the buffer
 * is usable. becase it can decrease the i/o time. :)
 * */
void put_dir( struct inode *ip, struct direct  *dp);
void del_dir( struct inode *ip );
void put_data(struct inode *, FILE *, u32_t);
void remove_dir( struct inode *ip , struct direct *dp);
void predir_path(char *path);
void del_file( struct inode *ip );

void ls( char *param )
{
    struct inode* ip ;
    struct buf *bp;
    struct direct  *dir_ptr;
    u32_t zone;
    u8_t index =0, i , n=0;
    if ( *param == 0 ) {
        printf("currentpath   : %s \n",currentpath);
        ip = (struct inode *) eat_path((char *)currentpath);
    } else {
        ip = (struct inode *)eat_path((char*)param);
        if ( ip == 0 ) {
            printf("not such file in this directory!\n");
            return  ;
        } else if( ip->i_mode == NORMAL_FILE_TYPE ) {
            printf("normal file : %s \n", param);
            return ;
        }
    }
    zone = ip->i_zone[index];
    while ( zone ) {
        bp = get_block(ip->i_dev,zone);
        for ( i = 0; i < MAX_DIR_SIZE ; i++) {
            dir_ptr = &(bp->b.b_dir[i]);
            if ( *(dir_ptr->d_name) != 0 ) {
                n++;
                if ( n == 8 ) {
                    n = 0;
                    printf("\n");
                }
                printf("  %s  ", dir_ptr->d_name);
            }
        }
        put_block(bp, DIR_BLOCK);
        index++;
        zone = ip->i_zone[index];
    }

    return ;
}

void mkdir(char *param)
{
    struct direct dir;
    struct inode *ip0, *ip1;
    struct super_block *sp;
    struct buf *bp ;
    sp = getsuper(ROOT_DEV);
    printf("mkdir");
    if ( *param == 0 ) {
        return ;
    }
    ip0 = (struct inode *) eat_path(currentpath);
    if ( ip0 == NULL ) {
        return ;
    }
    ip1 = (struct inode * )advance(ip0, param);
    strncpy(dir.d_name,  param,  sizeof(dir.d_name));
    if ( ip1 != NULL ) {
        if ( ip1->i_mode == NORMAL_FILE_TYPE ) {
            del_file(ip1);
            remove_dir(ip0, &dir);
        } else if ( ip1->i_mode == DIR_FILE_TYPE  ) {
            del_dir(ip1);
            remove_dir(ip0, &dir);
        }
        put_inode( ip1 );
    }
    ip1 = alloc_inode( ROOT_DEV );
    ip1->i_dev = ROOT_DEV ;
    ip1->i_size = 0x80;
    ip1->i_mode = DIR_FILE_TYPE ;
    dir.d_ino = ip1->i_num ;
    strncpy(dir.d_name,  param,  sizeof(dir.d_name));
    put_dir(ip0, &dir);
    ip1->i_zone[0] = alloc_zone(ROOT_DEV, sp->s_isearch );
    bp = get_block(ROOT_DEV, ip1->i_zone[0] );
    bp->b.b_dir[0].d_ino = ip1->i_num ;
    bp->b.b_dir[1].d_ino = ip1->i_num ;
    strncpy(bp->b.b_dir[0].d_name, ".", sizeof(bp->b.b_dir[0].d_name) );
    strncpy(bp->b.b_dir[1].d_name, "..", sizeof(bp->b.b_dir[1].d_name) );
    bp->b_dirt = DIRTY;
    put_block(bp, NORMAL_TYPE );
    put_inode(ip1);
    put_inode(ip0);
    return ;
}


/* copy from command.c 2012 1-20  10:43  */
/* test the vi command . nothing :)  */
void usage()
{
    printf("\n");
    printf("  there are simple command you could use, it's like linux command.\n");
    printf("  usage:\n");
    printf("  ls  none or pathname         -to show files in current direct or pathname direct .\n");
    printf("  cd  dirname                  -to change the current direct.\n");
    printf("  add filename                 -to add a file from the local system\n");
    printf("  del filename                 -to del a file named by filename.\n ");
    printf("  mkdir dirname                -to mkdir in current direct");
    printf("  quit                         -quit the program.\n");
    printf("  happy to use! :)\n\n");
    return ;
}

int menu()
{
    char tmp[PARA_SIZE];
    /* think the number of command  is less than 40 , use 40 as the large command index*/
    int ret = 40 , n = 0 , index = 0  ;
    printf("\n  > ");
    scanf("%s",tmp);
    /* better to use getc(stdin), i use many way , but could not get my purpose
     *  get the parameters. :)
     */
    while ( ( commandline[index] = getc(stdin) ) != '\n') {
        if ( commandline[index] == ' ' ) {
            continue;
        }
        index++;

    }
    if ( commandline[0] == '\n' ) {
        index = 0;
    }
    commandline[index] = 0;
    /*to enter which case in main loop*/
    for (n=0 ; n < COM_NR ; n++ ) {
        if ( !strcmp(commandname[n] , (const char* )tmp ) ) {
            ret = n;
        }
    }
    return ret ;
}

void help()
{
    usage();
}
void cd( char *parameter)
{
    struct inode *ip;
    char path[256];
    char name[FILE_NAME_MAX];
    if ( *parameter != 0 && strlen(parameter) <= FILE_NAME_MAX  ) {
        printf("currentpath: %s \n",currentpath);
        ip = (struct inode*)eat_path(parameter);
        if ( ip == NULL ) {
            printf(" the path not found!\n");
            return ;
        } else if ( ip->i_mode == NORMAL_FILE_TYPE ) {
            printf("can not change to a normal file!\n");
            return ;
        } else {       /* directory */
            memset(path, 0 , sizeof(path) );
            strcpy(path,parameter);
            get_name((char*)path,(char*)path,(char*)name);
            printf("oldpath: %s, left: %s, name: %s\n",parameter, path, name);
            if ( !strcmp( name , "."  ) ) {
                u8_t i = strlen(path);
                if ( path[i - 1 ] != '/' ) {
                    strcat(path,"/");
                }
                strcat(currentpath,path);
                printf("%s \n",currentpath);

            } else if ( !strcmp( name ,  "/") ) {
                strcpy(currentpath,parameter);
            } else if ( !strcmp( name , "..")  ) {
                predir_path(currentpath);
                strcat(currentpath,path);
            }
        }
    }
    printf("chang directory : %s \n",currentpath);
    return ;
}

void predir_path(char *path)
{
    u8_t i;
    char *p = path;
    i = strlen(path);
    p = p + i -1;
    if ( *p == '/' && p != path  ) {
        p--;
    }
    for ( ; *p!='/' && p != path ;  *p-- = 0 );
    return ;
}

void del(char *parame)
{
    struct inode *ip;
    struct direct dir;
    char name[60];
    printf("del %s\n",parame);
    if ( *parame == 0 ) {
        return ;
    }
    ip = (struct inode *) eat_path(parame);
    if ( ip == NULL ) {
        printf("path not found!\n");
        return ;
    } else {
        printf("the inode number is %d\n", ip->i_num);
    }
    if ( ip->i_mode == DIR_FILE_TYPE ) {
        del_dir(ip);
    } else if ( ip->i_mode == NORMAL_FILE_TYPE ) {
        del_file(ip);
    }
    pre_dir(parame,parame, name);
    strncpy(dir.d_name, name, strlen(name)+1);
    ip = (struct inode *) eat_path(parame);
    ip->i_size = ip->i_size - 0x40;
    if ( ip != NULL ) {
        remove_dir(ip, &dir);
    }
    return ;
}

void del_file( struct inode *ip )
{
    u32_t zone , ii, jj,  i;
    u8_t flag = 1 ;
    struct buf *bp0, *bp1, *bp2;
    if ( ip->i_zone[9] != 0 ) {
        free_zone(ROOT_DEV, ip->i_zone[9]);
        bp0 = get_block(ROOT_DEV, ip->i_zone[9]);
        for ( ii = 0; ii < 1024 && flag  ; ii++) {
            if ( bp0->b.b_ind[ii] != 0 ) {
                free_zone(ROOT_DEV, bp0->b.b_ind[ii]);
                bp1 = get_block(ROOT_DEV, bp0->b.b_ind[ii]);
                for ( jj = 0; jj < 1024 && flag ; jj++ ) {
                    if ( bp1->b.b_ind[jj] != 0 ) {
                        free_zone(ROOT_DEV, bp1->b.b_ind[jj] );
                        bp2 = get_block(ROOT_DEV, bp1->b.b_ind[jj]);
                        zero_block(bp2);
                        put_block(bp2,NORMAL_TYPE);
                    }
                }
                zero_block(bp1);
                put_block(bp1,NORMAL_TYPE);
            }
        }
        zero_block(bp0);
        put_block(bp0,NORMAL_TYPE);
        ip->i_zone[9] = 0;
    } else if ( ip->i_zone[7] != 0 ) {
        i = 1;
        flag = 1;
        if ( ip->i_zone[8] != 0 ) {
            i = 2;
        }
        for ( ii = 0 ; ii < i && flag  ; ii++) {
            free_zone(ROOT_DEV, ip->i_zone[7+ii]);
            bp0 = get_block(ROOT_DEV, ip->i_zone[7+ii]);
            for ( jj = 0 ; jj < 1024 && flag ; jj++ ) {
                if ( bp0->b.b_ind[jj] != 0 ) {
                    free_zone(ROOT_DEV, bp0->b.b_ind[jj] );
                    bp1 = get_block(ROOT_DEV, bp0->b.b_ind[jj]);
                    zero_block(bp1);
                    put_block(bp1, NORMAL_TYPE);
                    bp0->b.b_ind[jj] = 0;
                }
            }
            zero_block(bp0);
            put_block(bp0, NORMAL_TYPE);
            ip->i_zone[7+ii] = 0;
        }
    } else if ( ip->i_zone[0] != (u32_t) 0 ) {
        flag = 1;
        for ( ii = 0 ; ii < 7 && flag ; ii++) {
            if ( ip->i_zone[ii] != 0 ) {
                free_zone(ROOT_DEV, ip->i_zone[ii]);
                bp0 = get_block(ROOT_DEV, ip->i_zone[ii]);
                zero_block(bp0);
                put_block(bp0,NORMAL_TYPE);
                ip->i_zone[ii] = 0;
            }
        }
    } else {
        printf("del_file:null file --something wrong!\n");
        return ;
    }
    free_inode(ip->i_dev, ip->i_num);
}

/* del the dir */
void del_dir( struct inode *ip )
{
    u32_t zone , ii, jj,  i;
    u8_t flag = 1 ;
    struct direct *dp ;
    struct buf *bp0, *bp1, *bp2;
    if ( ip->i_zone[9] != (u32_t) 0 ) {
        bp0 = get_block(ROOT_DEV, ip->i_zone[9]);
        for ( ii = 0; ii < 1024 && flag  ; ii++) {
            if ( bp0->b.b_ind[ii] != 0 ) {
                free_zone(ROOT_DEV, bp0->b.b_ind[ii]);
                bp1 = get_block(ROOT_DEV, bp0->b.b_ind[ii]);
                for ( jj = 0; jj < 1024 && flag ; jj++ ) {
                    if ( bp1->b.b_ind[jj] != 0 ) {
                        free_zone(ROOT_DEV, bp1->b.b_ind[jj] );
                        bp2 = get_block(ROOT_DEV, bp1->b.b_ind[jj]);
                        for ( i = 0 ; i < 16 ; i++ ) {
                            dp = &(bp2->b.b_dir[i]);
                            if ( strcmp(dp->d_name , ".") || strcmp(dp->d_name, "..")  ) {
                                continue;
                            }
                            if ( *dp->d_name != 0 || dp->d_ino != 0 ) {
                                ip = get_inode(ROOT_DEV, dp->d_ino);
                                if ( ip == NULL ) {
                                    printf("del_dir null\n");
                                    return ;
                                }
                                if ( ip->i_mode == DIR_FILE_TYPE  ) {
                                    del_dir(ip);
                                } else if ( ip->i_mode == NORMAL_FILE_TYPE ) {
                                    del_file(ip);
                                }

                            }
                        }
                        zero_block(bp2);
                        put_block(bp2,NORMAL_TYPE);
                    }
                }
                zero_block(bp1);
                put_block(bp1,NORMAL_TYPE);
            }
        }
        zero_block(bp0);
        put_block(bp0,NORMAL_TYPE);
        ip->i_zone[9] = 0;
    } else if ( ip->i_zone[7] !=(u32_t) 0 ) {
        i = 1;
        flag = 1;
        if ( ip->i_zone[8] != 0 ) {
            i = 2;
        }
        for ( ii = 0 ; ii < i && flag  ; ii++) {
            if ( ip->i_zone[7+ii] != 0 ) {
                free_zone(ROOT_DEV, ip->i_zone[7+ii]);
                bp0 = get_block(ROOT_DEV, ip->i_zone[7+ii]);
                for ( jj = 0 ; jj < 1024 && flag ; jj++ ) {
                    if ( bp0->b.b_ind[jj] != 0 ) {
                        free_zone(ROOT_DEV, ip->i_zone[7+ii]);
                        bp1 = get_block(ROOT_DEV, bp0->b.b_ind[jj]);
                        for ( i = 0 ; i < 16 ; i++ ) {
                            dp = &(bp1->b.b_dir[i]);
                            if ( strcmp(dp->d_name , ".") || strcmp(dp->d_name, "..")  ) {
                                continue;
                            }
                            if ( *dp->d_name != 0 || dp->d_ino != 0 ) {
                                ip = get_inode(ROOT_DEV, dp->d_ino);
                                if ( ip == NULL ) {
                                    printf("del_dir null\n");
                                    return ;
                                }
                                if ( ip->i_mode == DIR_FILE_TYPE  ) {
                                    del_dir(ip);
                                } else if ( ip->i_mode == NORMAL_FILE_TYPE ) {
                                    del_file(ip);
                                }

                            }
                        }
                        zero_block(bp1);
                        put_block(bp1, NORMAL_TYPE);
                        bp0->b.b_ind[jj] = 0;
                    }
                }
                zero_block(bp0);
                put_block(bp0, NORMAL_TYPE);
                ip->i_zone[7+ii] = 0;
            }
        }
    } else if ( ip->i_zone[0] != (u32_t) 0 ) {
        flag = 1;
        for ( ii = 0 ; ii < 7 && flag ; ii++) {
            if ( ip->i_zone[ii] != 0 ) {
                free_zone(ROOT_DEV, ip->i_zone[ii]);
                bp0 = get_block(ROOT_DEV, ip->i_zone[ii]);
                for ( i = 0 ; i < 64 ; i++ ) {
                    dp = &(bp0->b.b_dir[i]);
                    if ( strcmp(dp->d_name , ".") || strcmp(dp->d_name, "..")  ) {
                        continue;
                    }
                    if ( *dp->d_name != 0 || dp->d_ino != 0  ) {
                        ip = get_inode(ROOT_DEV, dp->d_ino);
                        if ( ip == NULL ) {
                            printf("del_dir null\n");
                            return ;
                        }
                        if ( ip->i_mode == DIR_FILE_TYPE  ) {
                            del_dir(ip);
                        } else if ( ip->i_mode == NORMAL_FILE_TYPE ) {
                            del_file(ip);
                        }

                    }
                }
                zero_block(bp0);
                put_block(bp0,NORMAL_TYPE);
                ip->i_zone[ii] = 0;
            }
        }
    } else {
        printf("something wrong!\n");
        return ;
    }
    free_inode(ip->i_dev, ip->i_num);
}


void remove_dir( struct inode *ip , struct direct *dp)
{
    u32_t i , j, ii, jj;
    u8_t flag = 1,n ;
    struct buf *bp0, *bp1, *bp2;
    if ( ip->i_zone[9] != 0 ) {
        bp0 = get_block(ROOT_DEV, ip->i_zone[9]);
        for ( ii = 0; ii < 1024 && flag  ; ii++) {
            if ( bp0->b.b_ind[ii] != 0 ) {
                bp1 = get_block(ROOT_DEV, bp0->b.b_ind[ii]);
                for ( jj = 0; jj < 1024 && flag ; jj++ ) {
                    if ( bp1->b.b_ind[jj] != 0 ) {
                        bp2 = get_block(ROOT_DEV, bp1->b.b_ind[jj]);
                        for ( n = 0 ; n < 16 ; n++ ) {
                            if ( !strcmp(bp2->b.b_dir[n].d_name, dp->d_name) ) {
                                memset(&(bp2->b.b_dir[n]),0,sizeof(struct direct));
                                flag = 0;
                                break;
                            }
                        }
                        put_block(bp2, NORMAL_TYPE);
                    }
                }
                put_block(bp1,NORMAL_TYPE);
            }
        }
        put_block(bp0,NORMAL_TYPE);
    } else if ( ip->i_zone[7] != 0 ) {
        i = 1;
        flag = 1;
        if ( ip->i_zone[8] != 0 ) {
            i = 2;
        }
        for ( ii = 0 ; ii < i && flag  ; ii++) {
            bp0 = get_block(ROOT_DEV, ip->i_zone[7+ii]);
            for ( jj = 0 ; jj < 1024 && flag ; jj++ ) {
                if ( bp0->b.b_ind[jj] != 0 ) {
                    bp1 = get_block(ROOT_DEV, bp0->b.b_ind[jj]);
                    for ( n = 0 ; n < 16 ; n++ ) {
                        if ( !strcmp(bp1->b.b_dir[n].d_name, dp->d_name) ) {
                            memset(&(bp1->b.b_dir[n]), 0, sizeof(struct direct));
                            flag = 0;
                            break;
                        }
                    }
                    put_block(bp1 , NORMAL_TYPE);
                }
            }
            put_block(bp0, NORMAL_TYPE);
        }
    } else if ( ip->i_zone[0] !=  0 ) {
        flag = 1;
        for ( ii = 0 ; ii < 7 && flag ; ii++) {
            if ( ip->i_zone[ii] != 0 ) {
                bp0 = get_block(ROOT_DEV, ip->i_zone[ii]);
                for ( n = 0 ; n < 16 ; n++ ) {
                    if ( !strcmp( bp0->b.b_dir[n].d_name, dp->d_name ) ) {
                        memset( &(bp0->b.b_dir[n]) , 0 , sizeof(struct direct));
                        bp0->b_dirt  = DIRTY;
                        rw_block(bp0,WRITING);
                        flag = 0;
                        break;
                    }
                }
                put_block(bp0, NORMAL_TYPE);
            }
        }
    } else {
        printf("del direct something wrong!\n");
        return ;
    }
}

/*  when i am coding , i usally to write little code to make the main program logic simple to understand :) */
void add(char *parameter)
{
    u32_t  j = 0 , m , n ,  nn = 0 , jj = 0 ;
    u8_t i = 0 , page , flag  = 1;
    u32_t  zone;
    struct inode *ip0, *ip1 ;
    struct direct dir, *dp;
    time_t timer;
    long int size;
    timer = time(NULL);
    printf("add %s\n",parameter);
    FILE *fp  = fopen(parameter, "rb");
    if ( fp == NULL ) {
        printf("参数错误!\n");
        return ;
    }
    // 获得文件大小
    fseek(fp, 0 , SEEK_END);
    size  = ftell(fp);
//   检测是否存在路径名
    ip1 = ( struct inode * ) eat_path( currentpath );
    ip0 = (struct inode *)advance(ip1, parameter);
    if ( ip0 != NULL ) {
        del_file(ip0);
        strncpy(dir.d_name, parameter , sizeof(dir.d_name) );
        remove_dir(ip1 , &dir);
    }
// 分配节点号
    ip0 = alloc_inode( ROOT_DEV  );
    ip0->i_mode = NORMAL_FILE_TYPE ;
    ip0->i_nlinks = 1;
    ip0->i_uid = 0;
    ip0->i_gid = 0;
    ip0->i_size = size;
    ip0->i_atime = timer;
    ip0->i_ctime = timer;
    ip0->i_mtime = timer;
    ip1->i_ctime = timer;
    ip1->i_atime = timer;
    dir.d_ino = ip0->i_num ;
    ip1->i_size = ip1->i_size + 0x40;
    ip1->i_dirty = DIRTY;
    put_inode(ip0);
    strncpy(dir.d_name, parameter, DIRSIZ);
// 目录项放入根目录
    put_dir( ip1 , &dir);
    ip0 = get_inode(ROOT_DEV, dir.d_ino);
// 将数据存储进去
    put_data(ip0,fp,page);
    put_inode(ip0);
    put_inode(ip1);
    fclose(fp);
    return ;
}

void put_data(struct inode *ip , FILE *fp, u32_t page)
{
    u32_t zone , left = 0 , flag ,i, j, ii, jj, m, n, mm, nn ;
    long int pos;
    struct buf *bp0, *bp1, *bp2;
    struct super_block  *sp = getsuper(ROOT_DEV);
    fseek(fp, 0 , SEEK_END);
    pos = ftell(fp);
    fseek(fp, 0, SEEK_SET);
    page  =  pos / BLOCK_SIZ ;        /* get the file size */
    left = pos -page*BLOCK_SIZ ;
    page = (left )? (page+1) : page;
    if ( page <= 7 ) {
        for ( i = 0 ; i < page ; i++ ) {
            ip->i_zone[i] = alloc_zone(ROOT_DEV,sp->s_zsearch);
            bp0 = get_block(ROOT_DEV, ip->i_zone[i]);
            zero_block( bp0 );
            fread( bp0->b.b_data ,sizeof(bp0->b.b_data),1,fp);
            rw_block(bp0, WRITING);
            put_block(bp0,NORMAL_TYPE);
        }
    } else if ( page > 7 && page <= 2048) {
        i = 1;
        if ( page > 1024 ) {
            i = 2;
        }
        flag = 1;
        for ( ii = 0 ; ii < i  && flag ; ii++) {
            ip->i_zone[7+ii] = alloc_zone(ROOT_DEV,sp->s_zsearch);
            bp0 = get_block(ROOT_DEV, ip->i_zone[7+ii]);
            zero_block( bp0 );
            for ( j = 0; j < 1024 && flag ; j++ ) {
                bp0->b.b_ind[j] = alloc_zone(ROOT_DEV, sp->s_zsearch);
                bp1 = get_block(ROOT_DEV, bp0->b.b_ind[j]);
                zero_block( bp1 );
                if ( page == 1  && left > 0 ) {  /* if it is the last page */
                    n = 0 ;
                    while( n++ <  left ) {
                        fread(&(bp1->b.b_data[n]), sizeof(u8_t), 1, fp);
                    }
                    bp1->b_dirt = DIRTY ;
                } else {
                    printf ( "j:%x\t",bp0->b.b_ind[j] ) ;
                    fread(bp1->b.b_data, sizeof(bp1->b.b_data) ,1, fp );
                    printf ("page:%d\t",page) ;
                }
                bp1->b_dirt = DIRTY;
                put_block(bp1,NORMAL_TYPE);
                page--;
                if ( page == 0 ) {
                    flag =  0 ;
                }
            }
            put_block(bp0,NORMAL_TYPE);
        }
    } else if ( page > 2048 && page <= 1024*1024) {
        flag = 1 ;
        ip->i_zone[9] = alloc_zone(ROOT_DEV, sp->s_zsearch);
        bp0 = get_block(ROOT_DEV, sp->s_zsearch);
        for ( ii = 0 ; ii < 1024 && flag  ; ii++ ) {
            bp0->b.b_ind[ii] = alloc_zone(ROOT_DEV, sp->s_zsearch);
            bp1 = get_block(ROOT_DEV, bp0->b.b_ind[ii]);
            for ( jj = 0  ; jj < 1024 && flag  ; jj++ ) {
                bp1->b.b_ind[jj] = alloc_zone(ROOT_DEV, sp->s_zsearch);
                bp2 = get_block(ROOT_DEV, bp1->b.b_ind[jj]);
                if (  page == 1 ) {
                    flag = 0 ;
                    n = 0;
                    while( n++ < left ) {
                        fread(&(bp2->b.b_data[n]), sizeof(u8_t), 1, fp );
                    }
                    bp2->b_dirt = DIRTY ;
                } else {
                    fread(&(bp2->b.b_data), sizeof(bp2->b.b_data), 1, fp );
                }
                bp2->b_dirt = DIRTY ;
                page--;
            }
        }
    }
    return ;
}


void put_dir( struct inode *ip, struct direct  *dp0)
{
    u32_t i, j , ii = 0 , jj = 0 ,mm, nn,  m , n , flag = 1;
    struct buf *bp0 , *bp1 , *bp2;
    struct direct *dp;
    if (  ip->i_zone[9] != 0 ) {         /*  2nd indirect  find */
        flag = 1;
        bp0 = get_block( ROOT_DEV , ip->i_zone[0]);
        for ( ii = 0 ; ii < 1024 && flag ; ii++ ) {
            if ( bp0->b.b_ind[ii] != 0 ) {
                bp1 = get_block(ROOT_DEV, bp0->b.b_ind[ii]);
                for ( jj = 0 ; jj < 1024 && flag ; jj++ ) {
                    if ( bp1->b.b_ind[jj] != 0 ) {
                        bp2 = get_block(ROOT_DEV, bp1->b.b_ind[jj]);
                        dp = bp2->b.b_dir;
                        for ( ; *(dp->d_name) != 0 && dp < &(bp1->b.b_dir[64]) ; dp++ ) ;
                        if ( *(dp->d_name) == 0 ) {
                            dp->d_ino = dp0->d_ino ;
                            strncpy(dp->d_name , dp0->d_name , DIRSIZ);
                            bp2->b_dirt = DIRTY ;
                            flag = 0;
                        }
                        put_block(bp2,DIR_BLOCK);
                    }
                }
                put_block(bp1,DIR_BLOCK);
            }
        }
        put_block(bp0, DIR_BLOCK);
    } else if ( ip->i_zone[7]  != 0  || ip->i_zone[8] != 0  ) {  /*  1nd indirect find */
        flag = 1;
        i = 1;
        if ( ip->i_zone[8] != 0 && ip->i_zone[7] != 0 ) {
            i = 2;
        }
        for ( ii = 0 ; ii < i && flag ; ii++ ) {
            if ( ip->i_zone[ii] != 0 ) {
                bp0 = get_block(ROOT_DEV , ip->i_zone[ii]);
                for ( jj = 0 ; jj < 1024 && flag  ; jj++ ) {
                    if ( bp0->b.b_ind[jj] != 0 ) {
                        bp1 = get_block(ROOT_DEV, bp0->b.b_ind[jj]);
                        dp = bp1->b.b_dir ;
                        for ( ; *(dp->d_name)!=0 && dp < &(bp1->b.b_dir[64])  ; dp++  ) ;
                        if ( *dp->d_name == 0  ) {
                            dp->d_ino = dp0->d_ino ;
                            strncpy(dp->d_name , dp0->d_name , DIRSIZ );
                            bp1->b_dirt = DIRTY ;
                            flag = 0;
                        }
                        put_block(bp1, DIR_BLOCK);
                    }
                }
                put_block(bp0, DIR_BLOCK);
            }
        }
    } else {            /*  directly find */
        ii = 0;
        flag = 1;
        for ( ; ii < 7 && flag  ; ii++ ) {
            if ( ip->i_zone[ii] != 0 ) {
                bp0 = get_block(ROOT_DEV , ip->i_zone[ii]);
                dp = bp0->b.b_dir;
                for ( ; *(dp->d_name)!=0 && dp < &(bp0->b.b_dir[64]) ; dp++ ) ;
                if ( *(dp->d_name) == 0 ) {
                    dp->d_ino = dp0->d_ino ;
                    strncpy(dp->d_name , dp0->d_name , DIRSIZ );
                    bp0->b_dirt = DIRTY ;
                    flag = 0;
                }
                put_block(bp0 , DIR_BLOCK);
            }
        }
    }
}
void nothing()
{
    /* just do nothing as function name, push and pop with stack to take the time */
    return ;
}

void quit()
{
    /* to  release the resource, you will think exit function could do this
    *  but i think you should do this, becase this is your duty, :)
    */
    flushall(ROOT_DEV);
    if ( exec_file ) {
        fclose( stdin ) ;
        freopen("/dev/console","r",stdin);
    }
    exit(0);
}


