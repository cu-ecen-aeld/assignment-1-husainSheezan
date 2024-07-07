#!/bin/bash

#echo $#

if [ $# -eq 2 ];
then	

	#echo "Valid arguments"
	FPATH="$1"
	STR="$2"
	if [ -d $FPATH ]
 then
	#echo "Valid Directory"
	filecount=$(find "$FPATH" -type f | wc -l)
        matchingLines=$(grep -r $STR $FPATH 2>/dev/null | wc -l)
        echo "The number of files are $filecount and the number of matching lines are $matchingLines"
        exit 0
 else
	echo "Unknown Directory"
	exit 1 
	
 fi
 exit 0
else
	#echo "Invalid number of Arg"
	exit 1

fi
