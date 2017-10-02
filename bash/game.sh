#!/bin/bash

# This script implements the guessing game from the 3rd presentation

# Get a random number from 1 to 10
mynumber=$(( $RANDOM % 10 + 1 ))

while true; do
# ask the user to guess
# check userinput to be sure it is a number
while [[ -z "$usernumber" || (! "$usernumber" =~ ^[1-9]0?$) || "$usernumber" -gt 10 ]]; do
  read -p "Pick another number from 1 to 10, inclusive: " usernumber
done

# if they got it right, tell them and exit
if [ $mynumber -eq "$usernumber" ]; then
  echo "You got it right!"
  exit
else
if [ $usernumber -gt $usernumber ]; then
    echo "Nope, Guess higher"
  else
    echo "Nope, Guess lower"
  fi
fi
  # otherwise ask them again until they get it right
  usernumber=
done
