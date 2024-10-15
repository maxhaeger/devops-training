#!/bin/bash

# Plan: $1 suchen und durch $2 ersetzen. For Schleife?

if [ "$#" -ne 3 ]; then
	echo "Usage: 'String to change' 'Replacement String' 'File Name'"
	exit 1
fi

string_to_change=$1
replacement_string=$2
file_name=$3

while IFS= read -r line; do
	modified_line="${line//$1/$2}"
	echo "$modified_line"
done < $3
