#!/bin/bash

# ScummVM ROM location
SCUMMVM_FOLDER="/userdata/roms/scummvm"

if [ ! -d "$SCUMMVM_FOLDER" ]; then
    echo "$SCUMMVM_FOLDER does not exist. Aborting."
    exit 1
elif [ -z "$(ls -A "$SCUMMVM_FOLDER")" ]; then
    echo "Directory $SCUMMVM_FOLDER is empty. Nothing to do here."
    exit 1
fi

# Loop over all top-level subfolders of the ScummVM folder
for dir in $SCUMMVM_FOLDER/*/
do
  # Remove the trailing "/"
  dir=${dir%*/}
  # Try to identify a game in the given folder
  knulli-detect-scummvm-game $dir
done

exit 0