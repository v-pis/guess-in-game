#!/usr/bin/env bash

function main {

	echo "Try to guess how many files are in the current directory ?"
	read nof
	echo ""
	testmistakes
	equality
	echo "Congratulations! You guessed it."
}

function testmistakes {

        test=$(echo $nof | egrep -o "[0-9]+")
        while [[ ! $test =~ $nof ]]
        do
                echo "You must enter an integer without letters, symbols, spaces, dots and commas."
                read nof
                test=$(echo $nof | egrep -o "[0-9]+")
                echo ""
        done
}

function equality {

	nfd=$(ls -la | egrep "^-" | wc -l)

	while [[ ! $nof -eq $nfd ]]
	do
		if [[ $nof -gt $nfd ]]
		then
			echo "Your guess is too high"

		elif [[ $nof -lt $nfd ]]
		then
			echo "Your guess is too less"
		fi
	echo "Try to guess more:"
	read nof
	echo ""
	testmistakes
	done
}

main
