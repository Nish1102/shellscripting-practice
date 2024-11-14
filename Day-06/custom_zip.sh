#!/bin/bash

# Prompt for the source folder
read -p "Enter the source folder to zip: " SOURCE_DIR

# Check if the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "Source directory $SOURCE_DIR does not exist."
  exit 1
fi

# Prompt for the destination folder
read -p "Enter the destination folder to save the zip file: " DEST_DIR

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Prompt for a custom zip file name
read -p "Enter a name for the zip file (press Enter to use default name): " CUSTOM_NAME

# Set the zip file name (use custom name if provided, otherwise default to timestamp)
if [ -z "$CUSTOM_NAME" ]; then
  ZIP_NAME="backup_$(date +%Y%m%d_%H%M%S).zip"
else
  ZIP_NAME="${CUSTOM_NAME}.zip"
fi

# Create the zip file in the destination directory
zip -r "$DEST_DIR/$ZIP_NAME" "$SOURCE_DIR"

echo "Files in $SOURCE_DIR have been zipped into $DEST_DIR/$ZIP_NAME"
