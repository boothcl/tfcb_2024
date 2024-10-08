#!/bin/sh

mkdir -p homework02/question02
for i in `cat list.txt`
do echo $i > homework02/question02/file$i.txt
done
