README.md: guessinggame.sh
	echo "# Guessing game" > README.md
	echo "" >> README.md
	echo "" >> README.md
	echo "### Date and Time:" >> README.md
	echo "" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "" >> README.md
	echo "### Lines in guessinggame.sh:" >> README.md
	echo "" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
