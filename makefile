all: README.md

README.md: guessinggame.sh
	echo "Guessing Game in Bash" > README.md
	echo -n "Number of lines in guessinggame.sh: " >> README.md && wc -l guessinggame.sh | egrep -o "[0-9]+"  >> README.md
	eval echo The make command was last run at `date` >> README.md
	echo "" >> README.md

clean:
	rm README.md