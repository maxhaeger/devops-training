#!/bin/bash

usage() {
    echo "Verwendung: $0 -l <Länge> [-g] [-k] [-z] [-s]"
    exit 1
}

while getopts ":l:gkzs" opt; do
    case $opt in
        l)
            length=$OPTARG
            ;;
        g)
            use_upper=true
            ;;
        k)
            use_lower=true
            ;;
        z)
            use_digits=true
            ;;
        s)
            use_special=true
            ;;
        \?)
            echo "Ungültige Option: -$OPTARG"
            usage
            ;;
        :)
            echo "Option -$OPTARG erfordert ein Argument."
            usage
            ;;
    esac
done

if [ -z "$length" ]; then
    echo "Die Länge des Passworts muss gegeben sein!"
    usage
fi

upper="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
lower="abcdefghijklmnopqrstuvwxyz"
digits="0123456789"
special_chars="!@#$%^&*()-_=+[]{}|;:'\",.<>/?"

charset=""
[ "$use_upper" = true ] && charset="$charset$upper"
[ "$use_lower" = true ] && charset="$charset$lower"
[ "$use_digits" = true ] && charset="$charset$digits"
[ "$use_special" = true ] && charset="$charset$special_chars"

if [ -z "$charset" ]; then
    echo "Mindestens eine Zeichenart muss angegeben sein!"
    usage
fi

password=$(tr -dc "$charset" < /dev/urandom | head -c "$length")

echo "Generated password: $password"
echo "$password" | xclip -selection clipboard
echo "Copied to clipboard!"