#!/bin/bash
#while循环，从1加到100

i=1
s=0
while [ $i -le 100 ]
#如果变量小于100，则执行循环
do
	s=$(($s+$i))
	i=$(($i+1))
done
echo "The sum is: $s"
