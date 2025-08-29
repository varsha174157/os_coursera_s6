#!/bin/bash

# Function to get the number of files in the current directory
function file_count {
    echo $(ls -1 | wc -l)
}

# Actual number of files
num_files=$(file_count)

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

# Loop until correct guess
while true; do
    read -p "Enter your guess: " guess
    if [[ $guess -eq $num_files ]]; then
        echo "Congratulations! You guessed it right!"
        break
    elif [[ $guess -lt $num_files ]]; then
        echo "Your guess is too low. Try again."
    else
        echo "Your guess is too high. Try again."
    fi
done
