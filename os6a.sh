#!/bin/bash

echo "enter 1st num"
read num1
echo "enter 2nd num"
read num2
echo "enter 3rd num"
read num3

if [ $num1 -gt $num2 ] ; then
	if [ $num1 -gt $num3 ] ; then
		echo " $num1 is the greatest"
	else
		echo " $num3 is the greatest"
	fi

else
	if [ $num2 -gt $num3 ] ; then
		echo " $num2 is the greatest"
	else
		echo " $num3 is the greatest"
	fi
fi