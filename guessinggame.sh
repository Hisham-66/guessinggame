#!/usr/bin/env bash

function count_files {
    find . -maxdepth 1 -type f | wc -l
}

number=$(count_files)
guess=0

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

while [ "$guess" -ne "$number" ]
do
    read -p "Enter your guess: " guess

    if [ "$guess" -lt "$number" ]
    then
        echo "Your guess is too low. Try again!"
    elif [ "$guess" -gt "$number" ]
    then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed correctly!"
    fi
done

echo "Game over!"
