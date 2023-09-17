#!/bin/bash
target_number=$(( (RANDOM % 3) + 1 ))
user_guess=0

until [ "$user_guess" -eq "$target_number" ]; do
  read -p "Guess lucky number between 1 to 5 ! " user_guess
  if [ "$user_guess" -ne "$target_number" ]; then
    echo "Try again."
  else
    echo "Congratulations! You guessed the number: $target_number"
  fi
done
