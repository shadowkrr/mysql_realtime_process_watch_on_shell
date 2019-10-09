#!/bin/sh
interval=$1
# インターバルの単位は秒で初期値は1秒
test -z $interval && interval=1
watch -n1 'mysql -uroot -p`cat dbpass` -e"show processlist"'