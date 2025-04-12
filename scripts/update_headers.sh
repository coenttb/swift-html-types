#!/bin/bash

# Script to replace file headers with the new format and remove old header info

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

# Function to update file
update_file() {
    local file="$1"
    local temp_file="$(mktemp)"
    
    # Skip non-Swift files
    if [[ $file != *.swift ]]; then
        return
    fi
    
    # Check if the file has one of the expected headers
    if grep -q "Created by Coen ten Thije Boonkkamp" "$file"; then
        # First, remove the original copyright header
        if grep -q "///" "$file"; then
            # Format 1 (///)
            sed -n '/^\/{3}/,/^\/{3}$/!p' "$file" | sed '1,1d' > "$temp_file"
        else 
            # Format 2 (//)
            sed -n '/^\/\//,/^$/!p' "$file" | sed '1,1d' > "$temp_file"
        fi
        
        # Now remove any remaining file info header (swift-html, Created by...)
        # using grep to find and remove those lines
        grep -v "^\/{3} .* [Ss]wift$" "$temp_file" | \
        grep -v "^\/{3} swift-html$" | \
        grep -v "^\/{3} Created by" > "${temp_file}.clean"
        
        # Remove any double blank lines that might have been created
        cat -s "${temp_file}.clean" > "${temp_file}.final"
        
        # Add new header at the beginning and append the cleaned content
        echo "$NEW_HEADER" > "$file"
        cat "${temp_file}.final" >> "$file"
        echo "Updated: $file"
        
        # Clean up temporary files
        rm "${temp_file}.clean" "${temp_file}.final"
    fi
}

# Find all Swift files and update them
find "$(dirname "$0")/.." -name "*.swift" | while read -r file; do
    update_file "$file"
done

echo "Header update complete."

# Create CONTRIBUTORS.txt if it doesn't exist
CONTRIBUTORS_FILE="$(dirname "$0")/../CONTRIBUTORS.txt"
if [ ! -f "$CONTRIBUTORS_FILE" ]; then
    echo "# Contributors to swift-html-types

* Coen ten Thije Boonkkamp <coen@tenboonkkamp.com>" > "$CONTRIBUTORS_FILE"
    echo "Created CONTRIBUTORS.txt file"
fi