#!/bin/bash
set -eu +o pipefail
IFS=$'\n\t'

log() {
    echo -e "$1" >> logFile.log
}

create_directory() {
    directory="$1"
    if [[ ! -d "$directory" ]]; then
        mkdir -p "$directory"
        log "Created directory '$directory'"
    else
        log "Directory '$directory' already exists"
    fi
    chmod a+rwx "$directory"
}

sort_files() {
    suffix="$1"
    file_list=$(ls | grep -v '\.sh$' | grep -E "\.${suffix}$" || true)
    for file in $file_list; do
        if [[ -f "$file" ]]; then
            dir_name="/home/$USER/Desktop/office/$today/$suffix"
            create_directory "$dir_name"
            mv "$file" "$dir_name/"
            log "Moved file '$file' to '$dir_name/'"
            log "*****************************************************"
            sleep 0.05
        fi
    done
}

main() {
    log "__START__"
    log "Script '$0' executed on $(date)"
    sleep 2

    cd ~/Desktop
    today=$(date +%Y-%m-%d)
    create_directory "/home/$USER/Desktop/office/$today"

    sort_files "pdf"
    sort_files "docx"
    sort_files "xlsx"

    log "New directory structure:"
    tree "/home/$USER/Desktop/office/$today"
}

main "$@"
