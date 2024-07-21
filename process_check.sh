#!/bin/sh

processCount=`ps ax | grep nginx | grep -v -e grep -e pgrep | wc -l`
echo "nginx process $processCount"
if [ $processCount = 0 ];
then
  echo "not running nginx"
  sudo systemctl start nginx
  echo "nginx is running"
else
  echo "nginx is running"
fi