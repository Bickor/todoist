#!/bin/bash

# Gets from where the file is being called from.
STR=$(pwd)
echo $STR

# Get every file in this folder
for file in /Users/martinheberling/Desktop/Projects/todoist/*
do
  echo "$file"
  # Read all lines from a file. First part is to simply read all lines, and
  # second part is to also read trailing partial lines.
  while IFS= read -r line || [[ -n "$line" ]];
  do
    # Print every line
    echo "$line"
  done < $file
done