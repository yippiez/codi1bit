#!/bin/bash
# Run the codi1bit application

cd "$(dirname "$0")/.." || exit 1
exec cabal run
