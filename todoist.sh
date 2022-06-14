#!/bin/bash

# Gets from where the file is being called from.
CURDIR=$(pwd)
STR="TODO"

# Get every file in this folder
for file in /Users/martinheberling/Desktop/Projects/todoist/*
do
  # Read all lines from a file. First part is to simply read all lines, and
  # second part is to also read trailing partial lines.
  while IFS= read -r line || [[ -n "$line" ]];
  do
    # Print every line
    if [[ $line == *"$STR"* ]];
    then 
      echo "$line"
    fi
  done < $file
done