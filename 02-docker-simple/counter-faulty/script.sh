#!/usr/local/bin/bash

COUNT=0
while true; do
	echo $COUNT
	COUNT=$((COUNT+1))
	if [[ $COUNT -gt 5 ]]; then
		echo "My hand can only keep track of 5 things. Aborting."
		exit 1
	fi
	sleep 1
done
