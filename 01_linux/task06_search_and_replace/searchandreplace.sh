#!/bin/bash

# Plan: $1 suchen und durch $2 ersetzen. For Schleife?

if [ "$#" -ne 3 ]; then
	echo "Usage: 'String to change' 'Replacement String' 'File Name'"
	exit 1
fi

while IFS= read -r line; do
	modified_line="${line//$1/$2}"
	echo "$modified_line"
done < $3
