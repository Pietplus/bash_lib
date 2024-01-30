#!/bin/bash -vx
# Specify the log file path
log_file="script.log"
# Errorhandling
set -eux +o pipefail;
# Redirect stdout and stderr to the log file
exec > >(tee -a "$log_file") 2>&1
# Internal Field Separator: newline and tab
IFS=$'\n\t'
