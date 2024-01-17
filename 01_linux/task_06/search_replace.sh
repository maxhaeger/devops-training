#!/bin/bash

# Korrekte Argumentenzah?
if [ "$#" -ne 3 ]; then
    echo "Verwendung: $0 <Dateipfad> <Suchzeichenkette> <Ersatzzeichenkette>"
    exit 1
fi

dateipfad="$1"
suchzeichenkette="$2"
ersatzzeichenkette="$3"

# Existiert die Datei?
if [ ! -f "$dateipfad" ]; then
    echo "Die Datei $dateipfad existiert nicht!"
    exit 1
fi

sed -i "s/$suchzeichenkette/$ersatzzeichenkette/g" "$dateipfad"

echo "\"$suchzeichenkette\" wurde in der Datei \"$dateipfad\" durch \"$ersatzzeichenkette\""