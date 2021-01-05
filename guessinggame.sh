#!/usr/bin/env bash
response=1
nof=0
while [[ $response -ne $nof ]]
do
	echo "how many files are in the current directory"
	read response
	nof=$(ls | wc -l)
	if [[ $nof -eq $response ]]
	then
		echo "Congrats your answer is correct"
	elif [[ $nof -gt $response ]]
	then	
		echo "Your answer is low try again"
	else
		echo "Your answer is high try again"
	fi
done	

		
