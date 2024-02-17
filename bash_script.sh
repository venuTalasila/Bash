#!/bin/bash

# Check if a filename is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# Assign the first argument to the variable 'file'
file="$1"

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "File $file does not exist."
    exit 1
fi

# Open the file using the default application
xdg-open "$file"   # For Linux
# open "$file"      # For macOS
# start "$file"     # For Windows (with Git Bash or WSL)

# Optionally, you can uncomment one of the lines above
# based on your operating system.
