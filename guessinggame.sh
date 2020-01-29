#!/usr/bin/env bash
# File: guessinggame.sh

filesCount=$(ls | wc -l)

function compareGuess {
	if [[ $1 -eq $2 ]]; then
		echo "Congratulation, Your guess is correct. BYE"
                return 0
        elif [[ $1 -gt $2 ]]; then
		echo "Your guess is bigger than the correct number."
		return 1
        else
		echo "Your guess is smaller than the correct number."
		return 1
	fi
}

echo ""
echo "Hi user, How many files do you think are in my directory?"
echo "Please enter your guessing number"
echo ""
read guess
echo ""
echo "You have guessed $guess"

while ! compareGuess $guess $filesCount;
	do
		echo "Please try again."
		echo ""
		read guess
		echo ""
	done
exit 0
