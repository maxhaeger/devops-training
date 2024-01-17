#!/bin/bash

if [ "$#" -lt 4 ]; then
    echo "Verwendung: $0 <Komprimierung%> <Quellverzeichnis> <Zielverzeichnis> <Liste fon Bildendungen>"
    exit 1
fi

komprimierung="$1"
quellverzeichnis="$2"
zielverzeichnis="$3"
shift 3 # Removed die ersten beiden Argumente, sodass man einfacher durch die Bildendungen loopen kann

if [ ! -d "$quellverzeichnis" ]; then
    echo "Das Quellverzeichnis existiert nicht!"
    exit 1
fi

mkdir -p "$zielverzeichnis"

counter=0

for bildendung in "$@"; do # $@ enthält alle Argumente
    for bild in "$quellverzeichnis"/*."$bildendung"; do
        if [ -f "$bild" ]; then
            zielbild="$zielverzeichnis/$(basename "$bild")"
            convert -resize $komprimierung% "$bild" "$zielbild"
            ((counter++))
            echo "Verkleinert: $bild -> $zielbild"
        else
            echo "Warnung: Keine Bilder mit der Endung $bildendung gefunden!"
        fi
    done
done

echo "$counter Bilder wurden verkleinert!"