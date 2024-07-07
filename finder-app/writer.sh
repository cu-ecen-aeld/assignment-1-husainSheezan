#!/bin/bash


if [ $# -eq 2 ]
then	 
	fullPath="$1"
	dirPath="${fullPath%/*}"
	filename="${fullPath##*/}" 
	#echo $dirPath
	#echo $filename
	mkdir -p $dirPath
	echo $2 > $fullPath
	exit 0
else
 #echo "Invalid number of Arg"


exit 1

fi
