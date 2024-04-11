#!/bin/bash -vx

# Specify the log file path
log_file="script.log"
# Error handling
set -eux +o pipefail;
# Redirect stdout and stderr to the log file
exec > >(tee -a "$log_file") 2>&1
# Internal Field Separator: newline and tab
IFS=$'\n\t'

unpackFiles() {
    local dir=$1
    local destination=$2

    # Iterate over the subfolders in the directory
    for subdir in "$dir"/*; do
        if [[ -d "$subdir" ]]; then
            # Move files from the subfolder to the destination folder
            mv "$subdir"/* "$destination"
            # Remove the now empty subfolder
            rmdir "$subdir"
        fi
    done
}

# Specify the source directory and destination directory
source_dir="$(pwd)";
destination_dir="$(pwd)";

# Create the destination directory if it doesn't exist
mkdir -p "$destination_dir"

# Call the unpackFiles function with the source and destination directories
unpackFiles "$source_dir" "$destination_dir"

# Display the new directory structure
tree "$destination_dir"
