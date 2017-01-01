cmake_minimum_required(VERSION 2.8)

set(CMAKE_C_COMPILER, "cc")

#project(filemanager)

add_executable(filemanager cache.c
    command.c
    filemanage.c
    inode.c
    path.c
    super.c
    table.c)


add_executable(mkfs  mkfs.c)
