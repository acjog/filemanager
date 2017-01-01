#ifndef _CONST_H_
#define _CONST_H_

#define  BLOCK_SIZ  4096
#define  ZONE_SIZ   4096
#define  SECT_SIZ   512
#define  SUPER_BLOCK_V3 0x4d5a
#define NO_DEV  0
#define NO_BLOCK 0

#define DIRECT_PER_BLOCK  64

#define READING  0
#define WRITING  1
#define INODE_BLOCK  1
#define DIR_BLOCK    2
#define MAP_BLOCK    3
#define B_IMAP  2
#define NO_USE   0
#define NO_DEV   0

#define DIRTY  1
#define CLEAN  0

#define NON_INODE  (ino1_t)0

#define MAX_PATH_LENGTH  512
#define FILE_NAME_MAX     60

#define DIRSIZ  60

#define PUT_DIR  0
#define REMOVE_DIR 1

#define ROOT_DEV    (dev1_t)0x0100
#define ROOT_INODE  (ino1_t) 1

#define ROOT_DIR_TYPE  0x41ff
#define DIR_FILE_TYPE  0x41ed
#define NORMAL_FILE_TYPE 0x81a4

#define NORMAL_TYPE 10
#endif
