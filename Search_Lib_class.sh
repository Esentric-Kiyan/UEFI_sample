#!/bin/bash

# Check if the user has provided an input string
if [ -z "$1" ]; then
    echo "Usage: $0 <search_string>"
    exit 1
fi

# Assign user input to a variable
USER_INPUT=$1

# Search for the LIBRARY_CLASS in .inf files recursively
grep "$USER_INPUT" -r ./ --include="*.inf" | grep "LIBRARY_CLASS"
