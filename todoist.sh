#!/bin/bash

# Gets from where the file is being called from.
CURDIR=$(pwd)
STR="TODO"

function todoist {
  # Get every file in this folder
  cd $1

  for file in $1/*
  do
    # Check if the file is actually a directory
    if [[ -d $file ]];
    then
      cd $file
      NEXT=$(pwd)
      todoist $NEXT
    else
      # Read all lines from a file. First part is to simply read all lines, and
      # second part is to also read trailing partial lines.
      while IFS= read -r line || [[ -n "$line" ]];
      do
        
        # Print every line that contains STR
        if [[ $line == *"$STR"* ]];
        then 
          echo "$line"
        fi
      done < $file
    fi
  done
}

todoist $CURDIR