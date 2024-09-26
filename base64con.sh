#!/bin/bash

# Check if at least one argument is provided
if [ $# -eq 0 ]; then
    echo "No attributes provided. Please provide at least one attribute."
    exit 1
fi

# Loop through all the provided attributes
for attribute in "$@"; do
    # Encode the attribute value to base64
    base64_value=$(echo -n "$attribute" | base64)
    
    # Append the attribute and its base64 encoded value to output.txt
    echo "$attribute=$base64_value" >> output.txt
done

echo "Base64 encoded attributes have been written to output.txt"
