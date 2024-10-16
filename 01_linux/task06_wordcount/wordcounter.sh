#!/bin/bash

input=$(cat)

word_count=$(echo "$input" | wc -w)

echo "Word Count: $word_count"
