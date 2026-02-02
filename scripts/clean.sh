#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

# Clean the contents of the tmp folder
TMP_DIR="$PROJECT_ROOT/tmp"
if [ -d "$TMP_DIR" ]; then
    rm -rf "$TMP_DIR"/*
fi
