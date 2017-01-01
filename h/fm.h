#ifndef _FILE_MANAGE_H_
#define _FILE_MANAGE_H_

#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<memory.h>
#include "type.h"
#include "superblock.h"
#include "glo.h"
#include "buffer.h"
#include "const.h"
#include "inode.h"
#include "path.h"

/* global function */
extern void ls(char *);
extern void cd(char *);
extern void del(char *);
extern void add(char *);
extern void mkdir(char *);
extern void help();
extern void quit();
extern void nothing();
extern int menu();
extern  void buf_init();
extern void predir_path(char *);
// 全局变量
extern  int exec_file ;
#endif
