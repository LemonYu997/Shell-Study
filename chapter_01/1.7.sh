#!/bin/bash
#for循环,批量解压缩脚本

cd /lamp
ls *.tar.gz>ls.log
for i in $(cat ls.log)
do
	tar -zxf $i &>/dev/null
done
rm -rf /lamp/ls.log
