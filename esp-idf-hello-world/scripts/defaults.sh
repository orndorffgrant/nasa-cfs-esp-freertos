#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
CONFIG_DIR="$PROJECT_ROOT/third_party/cFS/cfe/modules"
OUTPUT_DIR="$PROJECT_ROOT/components/cfs/include"

mkdir -p "$OUTPUT_DIR"

find "$CONFIG_DIR" -path "*/config/default_*.h" -type f | while read -r default_file; do
    filename=$(basename "$default_file")
    if [[ "$filename" == default_* ]]; then
        new_filename="${filename#default_}"
        output_file="$OUTPUT_DIR/$new_filename"
        echo "#include \"$filename\"" > "$output_file"
        echo "Generated: $output_file"
    fi
done

echo "Done."