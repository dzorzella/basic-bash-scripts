#!/bin/bash
# Backup di File: 
# Crea uno script che copia tutti i file con una determinata estensione (ad esempio, .txt) da una directory a un'altra

if [ $# -ne 3 ]; then
	echo "Usage $0 ext source_dir dest_dir"
	exit 1
fi

extension=$1
if [[ "$extension" != .* ]]; then
	extension=".$extension"
fi
# echo "Extension : $extension"

source_directory=$2
if [[ "$source_directory" != */ ]]; then
        source_directory="$source_directory/"
fi
# echo "Source directory : $source_directory"

destination_directory=$3

if [ -d "$source_directory" ]; then
	if [ ! -d "$destination_directory" ]; then
        echo "Creating destination directory $destination_directory"
        mkdir $destination_directory
	fi
	cp $source_directory/*$extension $destination_directory
	echo "Successfully copied files"
else
	echo "Source directory not found"
fi
