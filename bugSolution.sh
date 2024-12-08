#!/bin/bash

#Corrected script to find the largest number in a file, handling non-numeric values and empty files.

input_file="numbers.txt"

largest_number=""

if [ ! -f "$input_file" ]; then
  echo "Error: Input file not found."
  exit 1
fi

if [ -s "$input_file" ]; then #Check if the file is not empty
  while IFS= read -r number; do
    if [[ "$number" =~ ^-?[0-9]+$ ]]; then #Check if number is numeric
      if [[ -z "$largest_number" ]] || (( number > largest_number )); then
        largest_number=$number
      fi
    fi
  done < "$input_file"
fi

if [[ -z "$largest_number" ]]; then
  echo "Largest number: No numbers found in the file."
else
  echo "Largest number: $largest_number"
fi