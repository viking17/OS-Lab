#!/bin/bash



x=$1
cd $1
set -- `ls -lR | grep -v "^d" | sort -k 5 -rn`
echo "largest in $x is $9"