#!/bin/bash
#判断用户输入的是什么文件

read -p "Please input a filename: " file
#接收键盘的输入，并赋予变量file

if [ -z "$file" ]
#判断file变量是否为普通文件
then
	echo "Error, please input a filename"
	exit 1
elif [ ! -e "$file" ]
#判断file的值是否存在
then
	echo "Your input is not a file!"
	exit 2
elif [ -f "$file" ]
#判断file的值是否为普通文件
then
	echo "$file is a regulare file!"
elif [ -d "$file" ]
#判断file的值是否为目录文件
then
	echo "$file is a directory!"
else
	echo "$file is an other file!"
fi
