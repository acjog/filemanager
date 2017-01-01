#ifndef _GLO_H_
#define _GLO_H_

#ifdef _TABLE
#define EXTERN
#else
#define EXTERN extern
#endif
#define PATH_SIZE  61
#define CMDSIZE  25
#define DEV_NAME 30
EXTERN  struct super_block  superblock;
EXTERN  char  commandline[CMDSIZE];
//EXTERN  char *parameter;
EXTERN  char currentpath[PATH_SIZE];
EXTERN  char  devname[DEV_NAME];
#endif
