#!/bin/bash
date1="2020-03-17 21:37:13"
date2=`date +"%y-%m-%d %T"`
date1=$(date -d "${date1}" '+%s')
date2=$(date -d "${date2}" '+%s')
#echo $date1
#echo $date2
DIFF=$(( ( date2 - date1 )/60 ))
echo "Time difference is $DIFF min."

while :
do
if [ $DIFF -lt 5 ];then 
echo "Logs are running for North Hub,logs running time difference is $DIFF Minutes"
else
echo "Logs are not running please check"
fi
sleep 5
done

