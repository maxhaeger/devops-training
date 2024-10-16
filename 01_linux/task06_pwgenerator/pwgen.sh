#!/bin/bash

# Character sets
lower=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")
upper=("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z")
digits=("0" "1" "2" "3" "4" "5" "6" "7" "8" "9")
specials=("!" "@" "#" "$" "%" "^" "&" "*" "(" ")" "-" "_" "=" "+" "[" "]" "{" "}" "|" ";" ":" "," "." "<" ">" "/" "?")

pwarray=()

read -p "Length: " length
read -p "Number of capital letters: " num_caps
read -p "Number of digits: " num_digits
read -p "Number of special chars: " num_specials

num_lower=$((length - num_caps - num_digits - num_specials))

if [[ $num_lower -lt 0 ]]; then
    echo "Error: Total specified characters exceed the password length."
    exit 1
fi

# Randomizing
for ((i=0; i<num_lower; i++)); do
    pwarray+=("${lower[$RANDOM % ${#lower[@]}]}")
done

for ((i=0; i<num_caps; i++)); do
    pwarray+=("${upper[$RANDOM % ${#upper[@]}]}")
done

for ((i=0; i<num_digits; i++)); do
    pwarray+=("${digits[$RANDOM % ${#digits[@]}]}")
done

for ((i=0; i<num_specials; i++)); do
    pwarray+=("${specials[$RANDOM % ${#specials[@]}]}")
done

# Shuffling
for ((i=0; i<${#pwarray[@]}; i++)); do
    rand=$RANDOM
    temp=${pwarray[$i]}
    j=$((rand % ${#pwarray[@]}))
    pwarray[$i]=${pwarray[$j]}
    pwarray[$j]=$temp
done

printf %s "${pwarray[@]}" $'\n'


