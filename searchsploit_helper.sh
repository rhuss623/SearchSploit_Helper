#!/bin/bash

if [ -z $1 ]
then
printf "Usage: ./searchsploit_helper.sh <searchsploit search terms>\n\nResults for search will be downloaded to a new directory.\n"
else
	mkdir $1
	searchsploit $@
	cd $1
	for e in $(searchsploit $@ -w -t | grep http | cut -f 2 -d "|")
	do
		exp_name=$(echo $e | cut -d "/" -f 5)
		searchsploit -m $exp_name 1>/dev/null
done
printf "\nYour results have successfully been downloaded to the $1 directory\n\n"

fi
