#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_folder> <output_video.mp4>"
    exit 1
fi

target_folder="$1"
output_video="$2"

# Find all music files (wav or mp3) and the first image file (jpg or png) in the target folder
music_files=$(find "$target_folder" -type f \( -iname "*.wav" -or -iname "*.mp3" \))
image_file=$(find "$target_folder" -type f \( -iname "*.jpg" -or -iname "*.jpeg" -or -iname "*.png" \) | head -n 1)

# Check if there are any music files
if [ -z "$music_files" ]; then
    echo "No music files found in the target folder."
    exit 1
fi

# Check if there is any image file
if [ -z "$image_file" ]; then
    echo "No image files found in the target folder."
    exit 1
fi

# Combine music files into a single audio file
cat $music_files > combined_audio.mp3

# Create video with combined audio and chosen image
ffmpeg -loop 1 -i "$image_file" -i combined_audio.mp3 -c:v libx264 -tune stillimage -c:a aac -strict experimental -b:a 192k -pix_fmt yuv420p -shortest "$output_video"

# Cleanup temporary audio file
rm combined_audio.mp3

echo "Video successfully created: $output_video"

