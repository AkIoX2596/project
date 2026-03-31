#!/bin/bash
for dir in /etc /home /usr/bin
do
 echo "Checking $dir"
 ls -ld $dir
 du -sh $dir 2>/dev/null
done
