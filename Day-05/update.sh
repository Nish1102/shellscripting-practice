#!/bin/bash

echo "Updating installed packages..."
# Update package lists
sudo apt-get update
# Upgrade installed packages
sudo apt-get upgrade -y
if [ $? -eq 0 ]; then
    echo "Update completed successfully."
else
    echo "Failed to update packages. Exiting..."
    exit 1
fi

