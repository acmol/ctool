#!/bin/bash

# how to use:
#   
#   ps ux | p 2 3
#   means print colmun 2 and column 3

cmd=""
delim=""
for i in $*  
do
    cmd=$cmd$delim'$'$i
    delim=","
done
awk '{print '$cmd';fflush(stdout)}'
