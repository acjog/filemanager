#ifndef PATH_H
#define PATH_H


#include "type.h"
#include "superblock.h"
#include "glo.h"
#include "buffer.h"
#include "const.h"
#include "inode.h"

struct inode*  eat_path(char *path );
struct inode* last_dir(char *path, char *str);
ino1_t look_up(struct buf* bp, char *fname);
struct inode* advance(struct inode* ip,  char* filename);
void  get_name(char* oldpath, char* newpath, char* filename);
void pre_dir(char *path,  char *predir, char *filename);

#endif // PATH_H
