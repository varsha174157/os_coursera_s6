#!/usr/bin/env bash
function file_count {
  echo $(ls -1 | wc -l)
}
correct=$(file_count)
echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"
read guess
while [[ $guess -ne $correct ]]
do
  if [[ $guess -lt $correct ]]
  then
    echo "too low"
  else
    echo "too high"
  fi
  read guess
done
echo "guess is correct"
echo "there are $correct files"