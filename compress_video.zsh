#!/usr/bin/env zsh

# Function to compress video
compress_video() {
  local filepath=$1
  local videotype=$2

  # Set default frame rate and output file name
  local framerate=10
  local output_file="output.mov"

  # Decide frame rate based on the type of video
  if [[ $videotype == "movie" ]]; then
    framerate=30
  fi

  # ffmpeg command to compress video with even dimensions
  ffmpeg -i $filepath -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -r $framerate $output_file

  echo "Compressed video saved as $output_file."
}

# Main script logic
if [[ -z $1 || -z $2 ]]; then
  echo -n "Please provide the full path of the file: "
  read filepath

  echo -n "Type of video [system/movie] (default: system): "
  read videotype
  [[ -z $videotype ]] && videotype="system"
else
  filepath=$1
  videotype=$2
fi

# Call the function to compress video
compress_video $filepath $videotype
