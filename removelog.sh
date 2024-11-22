#!/bin/bash

removelog="/home/pi/Desktop/removed.log"

if [ $# -eq 0 ] ; then
echo "Usage $0 list of files or directories (lgremove file1, logremove file2, ect" >&2
exit 1

fi
silent=false
if [ $1 == "-s" ] ; then
echo "Silent option working"
silent=true
shift
else
	echo " $(date): $USER: removed: $1 " >> $removelog
	echo " $(date): $USER: removed: $1 "	
fi
if [ silent == "true" ] ; then 
	echo " $(date): $USER: removed: $2" >> $removelog
/usr/bin/rm "$2"
else
	/usr/bin/rm "$1"
fi

