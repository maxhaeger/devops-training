#!/bin/bash

# Argument?
if [ "$#" -ne 1 ]; then
    echo "Bitte geben Sie den Dateinamen als Argument an."
    exit 1
fi

datei="$1"

# Existiert die Datei?
if [ ! -f "$datei" ]; then
    echo "Die Datei $datei existiert nicht."
    exit 1
fi

anzahl_woerter=$(wc -w < "$datei")
echo "Die Anzahl der Wörter in der Datei $datei beträgt: $anzahl_woerter"