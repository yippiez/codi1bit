#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

# Call clean.sh to perform standard cleaning
"$SCRIPT_DIR/clean.sh"

# Remove dist-newstyle directory (haskell build artifacts)
DIST_NEWSYTLE_DIR="$PROJECT_ROOT/dist-newstyle"
if [ -d "$DIST_NEWSYTLE_DIR" ]; then
    rm -rf "$DIST_NEWSYTLE_DIR"
fi
