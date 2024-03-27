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

# List all the files in the provided directory
echo "Files in directory $1:"
ls -l "$1"
