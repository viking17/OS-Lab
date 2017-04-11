#!/bin/bash

echo "enter password"
read pass1
stty -echo
echo "re-enter password"
read pass2

if [ "$pass1" == "$pass2" ] ; then
echo "keyboard locked."
echo "enter to unlock."
read pass3

while [ "$pass1" != "$pass3" ]
do
read pass3
done
else
echo "keyboard could'nt be locked."
fi
stty echo