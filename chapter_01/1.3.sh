#!/bin/bash
#判断apache是否启动

port=$(nmap -sT 192.168.1.156 | grep tcp | grep http | awk '{print $2}')
#使用nmap命令扫描服务器，并截取apache服务的状态，赋予变量port
if [ "$port" == "open" ]
then
	echo "$(date) http is ok!" >> /tmp/autostart-acc.log
else
	/etc/rc.d/init.d/httpd start &>/dev/null
	echo "$(date) restart httpd !!" >> /tmp/autostart-err.log
fi
