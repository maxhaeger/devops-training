#!/bin/bash
# Task 06 Auto File Processing
# Dependencies: ImageMagick

mkdir -p Compressed_Images

for image in *.{jpg,jpeg,png,gif,bmp,tiff}; do
	if [[ -f "$image" ]]; then
		convert $image -quality 50% "Compressed_Images/$image"
		echo "$image compressed."
	fi
done

echo "Completed."
