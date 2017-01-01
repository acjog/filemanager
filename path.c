#include "h/fm.h"

void  get_name(char*, char*,char*);
struct inode * last_dir( char *, char*);
struct inode *advance(struct inode*, char*);
ino1_t look_up( struct buf *, char*);
/* turn the path to inode */
struct inode*  eat_path(char *path )
{
    struct inode *ip;
    char oldpath[MAX_PATH_LENGTH],name[FILE_NAME_MAX];
    char *ch_ptr;
    u8_t finding = 1 ;    /* keep finding */
    memset(oldpath,0,sizeof(oldpath));
    strcpy(oldpath,path);
    memset(name , 0 , sizeof(name) );
    ip = last_dir(oldpath,oldpath);
    if ( ip == NULL ) {
        printf("the path wrong!\n");
        return ip;
    }
    do {
        memset(name, 0 , sizeof(name) );
        get_name(oldpath,oldpath,name);   /* get the name */
        if (name[0] == 0 || name[0] == '/' ) { /* got it */
            break;
        }
        if ( ip->i_mode == DIR_FILE_TYPE || ip->i_mode == ROOT_DIR_TYPE  ) { /* ip is directory */
            put_inode(ip);
            ip = advance(ip,name);    /* get the inode number according the name */
        }
        if ( ip == NULL ) {    /* wrong path*/
            printf("the path not found ! \n");
            return ip;
        }
    } while( finding );        /* keep finding */
    return ip;
}

/* check the last dir , copy the left path to str */
struct inode* last_dir(char *path, char *str)
{
    struct super_block *sp;
    struct inode *ip;
    ino1_t inum;
    u32_t zone;
    dev1_t dev;
    char  dir[FILE_NAME_MAX];
    /*  current path directory */
    if ( *path == '.' && *(path+1) == '/'  ) {
        ip = (struct inode * )eat_path(currentpath);
        strncpy(str, path+2, sizeof(path+2));
        return ip;
    }
    memset( dir , 0 , sizeof(dir) );
    /* get the directory name */
    get_name(path,str,dir);
    if ( dir[0] == 0 ) {
        printf("no dir exsits!\n");
        return NULL;
    }
    sp = getsuper(ROOT_DEV);
    dev = sp->s_dev;
    if ( !strcmp(dir,"/")  ) {   /*  root directory */
        ip = get_inode(ROOT_DEV,ROOT_INODE);
        return ip;
    } else if ( !strcmp(dir, "..") ) {
        u8_t i;
        struct buf *bp;
        struct inode *inp;
        ip = eat_path(currentpath);
        /* first directly find , don't think Sec indirec and third indirec*/
        for ( i = 0; i < 7 ; i++ ) {
            zone  = ip->i_zone[i];
            bp = get_block(dev,zone);
            inum = look_up(bp,dir);
            if ( inum == 0 ) {
                continue;
            }
            inp = get_inode(dev,inum);
            put_block(bp,DIR_BLOCK);
            return inp;
        }
    } else { /*current directory*/
        ip = eat_path(currentpath);
        return ip;
    }

    return NULL;
}

ino1_t look_up(struct buf* bp, char *fname)
{
    struct direct *dir_ptr;
    u8_t i;
    for ( i = 0 ; i < DIRECT_PER_BLOCK ; i++  ) {
        dir_ptr = & (bp->b.b_dir[i]);
        if ( !strcmp( fname , dir_ptr->d_name) ) {
            return dir_ptr->d_ino;
        }
    }
    return 0;
}

/* according the inode number to find the file named by  filename */
struct inode* advance(struct inode* ip,  char* filename)
{
    struct inode *inode_ptr;
    u32_t   zone, i, j, ii, jj, n, m;
    ino1_t  inum;
    struct buf *bp0, *bp1, *bp2;
    struct direct *dp;
    if ( ip->i_mode == NORMAL_FILE_TYPE ) { /* not directory */
        return 0;
    }
    if ( ip->i_zone[9] != 0 ) {
        bp0 = get_block(ROOT_DEV, ip->i_zone[9]);
        for ( ii = 0 ; ii < 1024 ; ii ++ ) {
            if ( bp0->b.b_ind[ii] != 0 ) {
                bp1 =  get_block(ROOT_DEV, bp0->b.b_ind[ii] );
                for ( jj = 0 ; jj < 1024 ; jj++ ) {
                    if ( bp1->b.b_ind[jj] != 0 ) {
                        bp2 = get_block(ROOT_DEV, bp1->b.b_ind[jj] );
                        for ( i = 0; i < 16 ; i++ ) {
                            dp = &(bp2->b.b_dir[i]);
                            if ( !strcmp(dp->d_name, filename) ) {
                                inode_ptr = get_inode(ROOT_DEV, dp->d_ino);
                                return inode_ptr ;
                            }
                        }
                        put_block(bp2, INODE_BLOCK);
                    }
                }
                put_block(bp1, INODE_BLOCK);
            }
        }
        put_block(bp0,INODE_BLOCK );
    } else if ( ip->i_zone[7] != 0 ) {
        n = 1;
        if ( ip->i_zone[8] != 0 ) {
            n = 2;
        }
        for ( ii = 0 ; ii < n ; ii++ ) {
            bp0 = get_block(ROOT_DEV, ip->i_zone[7+ii]);
            for( jj = 0 ; jj < 1024 ; jj++ ) {
                if ( bp1->b.b_ind[jj] != 0 ) {
                    bp1 = get_block(ROOT_DEV, bp1->b.b_ind[jj]);
                    for ( i = 0 ; i < 16 ; i++ ) {
                        dp = &(bp1->b.b_dir[i]);
                        if ( !strcmp(dp->d_name, filename) ) {
                            inode_ptr = get_inode(ROOT_DEV, dp->d_ino);
                            return inode_ptr ;
                        }
                    }
                    put_block(bp0,INODE_BLOCK);
                }
            }
        }
    } else if ( ip->i_zone[0] != 0 ) {
        for ( ii = 0 ; ii < 7 ; ii++ ) {
            if ( ip->i_zone[ii] != 0 ) {
                bp0 = get_block(ROOT_DEV, ip->i_zone[ii]);
                for ( i = 0 ; i < 16 ; i++ ) {
                    dp = &(bp0->b.b_dir[i]);
                    if ( !strcmp(dp->d_name, filename) ) {
                        inode_ptr = get_inode(ROOT_DEV, dp->d_ino);
                        return inode_ptr ;
                    }
                }
                put_block(bp0, INODE_BLOCK);
            }
        }
    } else {
        return 0 ;
    }
    return 0;
}

void  get_name(char* oldpath, char* newpath, char* filename)
{
    u8_t i;
    char *p = oldpath;
    if ( *p == '/' ) {  /* do the special case '/' which means root */
        *filename = *p;
        *( filename + 1 ) = 0;
        p++;
        do {
            *newpath++ = *p++;
        } while ( *p != 0 ) ;
        *newpath  = 0;
        return ;
    }
    for ( p = oldpath ; *p != '/' && *p != 0 ;  ) { /* get the filename */
        *filename++ = *p++;
    }
    *filename = 0;
    if ( *p == 0 ) {    /* do all */
        *oldpath = 0;
    } else {         /*  *p ==  '/' */
        p++;
        for ( ; *p ;  ) {
            *newpath++ = *p++;
        }
        *newpath = 0;
    }
    return ;
}

void pre_dir(char *path,  char *predir, char *filename)
{
    char *src, *dest;
    int  len , i ;
    len = strlen(path);
    if ( *path == 0 || len == 0  ) {     /*  null  dir  */
        return ;
    }
    /* copy the string from src to dest */
    src = path ;
    dest = predir;
    i = len ;
    for ( ; *src  ; ) {
        *dest++ = *src++;
    }
    *dest = 0;
    /*  remove the the first */
    src = predir + i - 1;
    if ( *src == '/' ) {
        *src = 0 ;
        src--;
    }
    for ( ; *src != '/' && src >= predir ;  src--);
    /* check if the pre directory is currentdir */
    if ( src < predir ) {
        strncpy(predir, currentpath, strlen(currentpath));
    }
    src++;
    for ( ;  *src ;  ) {
        *filename++ = *src;
        *src++ = 0;
    }
    *filename = 0;
    return ;
}
