#!/usr/bin/env bash
# File: guessingame.sh

function guessinggame {

	#Get the number of files in the directory
	nfd=$(ls -la | egrep "^-" | wc -l)

	#Make a request to the user
	echo "Try to guess how many files are in the current directory ?"
	read nof
	echo ""

	#Testing for equality
	while [[ ! $nof -eq $nfd ]]
	do

		if [[ $nof -gt $nfd ]]
		then
			echo "Your guess is too high"
			echo "Try to guess more:"
        		read nof
        		echo ""
		elif [[ $nof -lt $nfd ]]
		then
			echo "Your guess is too less"
			echo "Try to guess more:"
        		read nof
        		echo ""
		fi
	done

	#Win
	echo "Congratulations! You guessed it."

}

guessinggame
