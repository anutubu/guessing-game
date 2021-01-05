#!/usr/bin/env bash
function guess {
	while [[ $response -ne $nof ]]
	do
		if [[ $nof -gt $response ]]
		then
			echo "Your guess is too low please enter a number again:"
			read response
		elif [[ $nof -lt $response ]]
		then	
			echo "Your answer is too high please enter a number again:"
			read response
		fi
	done
	echo "Congratulations ! Your answer is correct"
}

echo "Enter the no. of files in the current directory:"
read response
nof=$(ls -a | wc -l)
guess response nof 
