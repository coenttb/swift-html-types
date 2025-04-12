#!/bin/bash

# Script to add headers to all files in HTMLTypesFoundation, regardless of content

NEW_HEADER="//===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//
"

FOUNDATION_DIR="$(dirname "$0")/../Sources/HTMLTypesFoundation"

# Check if directory exists
if [ ! -d "$FOUNDATION_DIR" ]; then
    echo "Error: HTMLTypesFoundation directory not found at $FOUNDATION_DIR"
    exit 1
fi

# Function to update file
add_header() {
    local file="$1"
    local temp_file="$(mktemp)"
    
    # Skip non-Swift files
    if [[ $file != *.swift ]]; then
        return
    fi
    
    # Save the original content
    cat "$file" > "$temp_file"
    
    # Add new header at the beginning and append the original content
    echo "$NEW_HEADER" > "$file"
    cat "$temp_file" >> "$file"
    echo "Updated: $file"
}

# Find all Swift files in HTMLTypesFoundation and update them
find "$FOUNDATION_DIR" -name "*.swift" | while read -r file; do
    add_header "$file"
done

echo "Header update complete for HTMLTypesFoundation."