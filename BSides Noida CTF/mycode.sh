#!/bin/bash

for i in {1..100}
do
	filename=$(ls -l | tail -1 | awk 'FS=" " {print $9}')
	if [[ $filename =~ ".txt"$ ]]
	then
		cat $filename
		foldername=$(ls -l | head -2 | tail -1 | awk 'FS=" " {print $9}')
		cd $foldername
	else
		filename=$(ls -l | head -2 | tail -1 | awk 'FS=" " {print $9}')
		cat $filename
		foldername=$(ls -l | tail -1 | awk 'FS=" " {print $9}')
		cd $foldername
	fi
done