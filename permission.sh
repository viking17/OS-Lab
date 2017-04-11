#!/bin/bash

f1=`ls -l $1|cut -c '2-10'`
f2=`ls -l $2|cut -c '2-10'`

if [ "$f1" == "$f2" ];then
	echo "equal"
	echo "$f1"
	echo "$f2"

else
	echo "not equal"
	echo "$1 $f1"
	echo "$2 $f2"
fi