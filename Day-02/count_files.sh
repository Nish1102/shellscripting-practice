#!/bin/bash

# Check if user has provided a directory path
if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Check if the provided directory exists
if [ ! -d "$1" ]; then
    echo "Error: Directory '$1' does not exist."
    exit 1
fi

# Count the number of files in the provided directory
file_count=$(find "$1" -maxdepth 1 -type f | wc -l)

# Display the count of files
echo "Number of files in directory $1: $file_count"
