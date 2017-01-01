#!/bin/sh

 find ./ -name "*.h" -print | xargs  astyle -A10  -W1 -xc -xy -c
 find ./ -name "*.c" -print | xargs  astyle -A10  -W1 -xc -xy -c
