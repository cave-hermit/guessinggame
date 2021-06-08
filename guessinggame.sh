#!/usr/bin/env bash
trueans=$(ls | wc -l)
sweetrelease=0
game()
{ echo "Enter your guess... now!"
read ans
echo "You entered: $ans"
[[ $trueans = $ans ]]
if [[ $? = 0 ]]
then
	echo "Correct!"
	sweetrelease=1
else
	if [[ $ans>$trueans ]]
	then
		echo "Too high!"
	else
		echo "Too low!"
	fi
fi
}
echo "Welcome to the guessing game! Please guess how many files are in this directory!"
while [ $sweetrelease -eq 0 ]
do
game
done
