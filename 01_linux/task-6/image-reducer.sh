#!/bin/bash
echo "Welcome to the image reducer."
sleep 1
echo "Give a path where images are located."
read path
echo "Give the percent of reduction (Number only!)."
read percent
echo "Give a path where converted images will be stored."
read new_path

for file in "$path"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        filename_no_ext="${filename%.*}"
        magick "$file" -resize "${percent}%" "$new_path/${filename_no_ext}.png"
    fi
done