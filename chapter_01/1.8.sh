#!/bin/bash
#打印所有.sh文件

cd /home/lemon/Project/Repo/Study-Shell/chapter_01/

ls *.sh > ls.log

y=1
for i in $(cat ls.log)
do
	echo $y
	y=$(($y+1))
done
