#!/bin/bash
# toLower.sh: Converts all input to lowercase.

set -eux pipefail

main() {
files=$(ls);
for files in $files; do
    echo $files | tr '[:upper:]' '[:lower:]'
done
}

main "@"


