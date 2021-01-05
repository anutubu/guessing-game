all: README.md

README.md:
	touch README.md
	echo "# THE GUESSING GAME" > README.md
	echo -n "\nThe date and time at which make was run:" >> README.md
	date >> README.md
	echo -n "\nNo. of line in the code guessinggame.sh is " >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
