#!/bin/bash

# Check if a package name is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <package_name>"
    exit 1
fi

package_name=$1

# Check if the package is already installed
if dpkg -l | grep -q $package_name; then
    echo "$package_name is already installed."
else
    echo "Installing $package_name..."
    # Add commands to install the package
    sudo apt-get update
    sudo apt-get install -y $package_name
    if [ $? -eq 0 ]; then
        echo "$package_name installed successfully."
    else
        echo "Failed to install $package_name. Exiting..."
        exit 1
    fi
fi
