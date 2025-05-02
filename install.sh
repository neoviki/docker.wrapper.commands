#!/bin/bash

SOURCE_DIR="src"
TARGET_DIR="/usr/local/bin/"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory '$SOURCE_DIR' not found."
    exit 1
fi

echo "Installing Docker Wrapper Commands"

chmod +x "$SOURCE_DIR/*"

echo "Copying files from $SOURCE_DIR to $TARGET_DIR"
sudo cp -rf "$SOURCE_DIR"/* "$TARGET_DIR/"

echo "Installation complete."
