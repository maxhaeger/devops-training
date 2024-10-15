#!/bin/bash

BACKUP_DIR="backup"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
FILENAME=$(basename "$1")
BACKUP_FILENAME="${FILENAME%.*}_$TIMESTAMP.tar.gz"

if [ ! -f "$1" ]; then
	echo "Error: File '$1' not found."
	exit 1
fi

if [ ! -d "$BACKUP_DIR" ]; then
	echo "Backup directory does not exist. Creating directory."
	mkdir "$BACKUP_DIR"
fi

tar -cfz "$BACKUP_DIR/$BACKUP_FILENAME" "$1"
