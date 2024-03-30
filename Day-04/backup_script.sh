#!/bin/bash

# Backup directory
backup_dir="/path/to/backup/directory"

# Create backup directory if not exists
mkdir -p $backup_dir

# Files and directories to backup
files_to_backup=(
    "/path/to/file1"
    "/path/to/directory1"
    "/path/to/directory2"
)

# Timestamp for backup
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

# Loop through files and directories
for item in "${files_to_backup[@]}"
do
    # Extract base name
    base_name=$(basename $item)

    # Backup filename
    backup_filename="$base_name"_"$timestamp"

    # Create backup
    cp -r "$item" "$backup_dir/$backup_filename"
done

echo "Backup completed successfully."
