#!/bin/bash

# Gets from where the file is being called from.
STR=$(pwd)
echo $STR

FILE="test.py"

# Read all lines from a file. First part is to simply read all lines, and
# second part is to also read trailing partial lines.
while IFS= read -r line || [[ -n "$line" ]];
do
  echo "$line"
done < $FILE