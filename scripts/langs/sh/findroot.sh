
find_bin_directory() {
    current_directory=$(pwd)
    
    while [ "$current_directory" != "/" ]; do
        bin_directory="$current_directory/bin"
        
        if [ -d "$bin_directory" ]; then
            echo "$bin_directory"
            return
        fi
        
        current_directory=$(dirname "$current_directory")
    done
    
    echo "Bin directory not found."
}

bin_directory=$(find_bin_directory)
if [ -n "$bin_directory" ]; then
    echo "Bin directory found: $bin_directory"
else
    echo "Bin directory not found."
fi


