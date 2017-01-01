CC = gcc
CCFLAGS  =   -c  -g  -Wimplicit-function-declaration
OBJECT_1  = command.o  table.o  cache.o super.o path.o inode.o  filemanage.o
OBJECT_2  = mkfs.o
TARGET = mkfs  filemanage 

all : $(TARGET)

filemanage  : $(OBJECT_1)
	$(CC)  $(OBJECT_1)  -o $@

mkfs :  $(OBJECT_2)
	$(CC)  $(OBJECT_2)  -o $@

mkfs.o :  mkfs.c
	$(CC)   $(CCFLAGS)  $<  -o $@

command.o: command.c  h/fm.h  h/type.h
	$(CC) $(CCFLAGS)  $< -o  $@

table.o : table.c h/glo.h  
	  $(CC) $(CCFLAGS)  $< -o  $@

cache.o : cache.c  h/buffer.h h/type.h
	   $(CC)  $(CCFLAGS)   $< -o $@

super.o : super.c h/superblock.h
	  $(CC)  $(CCFLAGS)   $< -o  $@      

path.o : path.c 
	 $(CC) $(CCFLAGS)  $< -o $@

inode.o : inode.c 
	     $(CC)  $(CCFLAGS)  $< -o $@
	     
filemanage.o : filemanage.c  h/fm.h  h/type.h
	    $(CC) $(CCFLAGS)  $< -o $@

clean:
	rm  $(TARGET)  $(OBJECT_1) $(OBJECT_2) >errro.txt  2>&1
	find ./ -name "*~" -print | xargs rm 


