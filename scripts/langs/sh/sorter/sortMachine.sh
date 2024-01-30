#!/bin/bash

./boiler.sh

main() {
    local currentDir=$(pwd);
    local today=$(date +%y%m%d)

    mkdir -p "$currentDir/$today";
    chmod a+rwx "$currentDir/$today";
    local file_list=$(ls | grep -v '\.sh$' | sort -t . -k 2);
    local dir_name=$1

    for file in $file_list;
    do
        if [[ -f "$file" ]];
        then
            # Get the suffix of the files
            local suffix="${file##*.}";
            echo "${suffix}";
            # Create a new directory with the suffix name
            local new_dir_name="$dir_name/$today/$suffix";
            mkdir -p "$new_dir_name";
            # Move the file to the new directory
            mv "$file" "$new_dir_name/";

            sleep 0.3;
        fi
    done

    # Display new directory structure
    tree "$dir_name/$today"
}

# Create the directory name
dir_name=$(pwd)

# Call the main function and pass the directory name as an argument
main "$dir_name"
