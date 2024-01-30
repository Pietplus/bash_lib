#!/bin/bash

#execute boilerplate
./+.sh
# grant permission on the boilerplate and the current file.
chmod 777 +.sh $0;

main() {
    # Compile C files
    cfiles=$(find . -type f -name '*.c')
    compiled_files=()

    for filepath in $cfiles; do
        filename=$(basename "$filepath")
        compiled_filename="${filename%.*}"  # Remove the .c extension
        compiler_command="gcc -o $compiled_filename $filepath"  # Modify the compiler command as needed

        # Execute the compiler command
        if $compiler_command; then
            compiled_files+=("$compiled_filename")
            echo "Compiled: $filename"
        else
            echo "Failed to compile: $filename"
        fi
    done

    # Print the list of compiled files
    echo "List of compiled files:"
    for compiled_file in "${compiled_files[@]}"; do
        echo "$compiled_file"
    done

    # Move files to subdirectories
    source_directory="/path/to/source_directory"
    destination_directory="/path/to/destination_directory"

    mkdir -p "$destination_directory"

    for file in "$source_directory"/*; do
        if [ -f "$file" ]; then
            # Extract the filename
            filename=$(basename "$file")

            # Create a subdirectory based on the filename
            subdirectory="$destination_directory/${filename%.*}"
            mkdir -p "$subdirectory"

            # Move the file to the subdirectory
            mv "$file" "$subdirectory"
        fi
    done
}

# Call the main function
main
