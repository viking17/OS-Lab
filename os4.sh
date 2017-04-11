#!/bin/bash

for name in $*
do
	if grep $name /etc/passwd >/dev/null
		then
			echo "login : $name"
			hdir=`grep $name /etc/passwd | cut -d":" -f6`
			echo "directory is : $hdir"
	else
		echo "not a valid name"
	fi
done
