#!/bin/bash

len=$#

for(( i=$len;i>0;i-- ))do
eval echo \$$i
done