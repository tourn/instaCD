#!/bin/bash

#determine folder prefix
me="${BASH_SOURCE[0]}"
scriptDir="${me%/*}/"
if [[ "$scriptDir" = "instaCD.bash/" ]]; then
	scriptDir="";
fi

dir=`perl ${scriptDir}instaCD.pl "$scriptDir" "$@"`
if [ -z $dir ]; then
	true
	#echo "nowhere to go"
else
	#echo "going to $dir"
	cd $dir
fi
