#!/bin/bash

TARGET_DIR="$(pwd)"

for FILE in "$TARGET_DIR"/*; do
    BASENAME=$(basename "$FILE")
    
    NEW_NAME=$(echo "$BASENAME" | tr '[:upper:]' '[:lower:]' | sed -e 's/ /_/g' -e 's/-/_/g')
    
    mv "$FILE" "$TARGET_DIR/$NEW_NAME"
done

echo "Snake up! 🐍"

