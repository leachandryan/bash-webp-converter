#!/bin/bash
PARAMS=('-m 6 -q 70 -mt -af -progress') #tracks progress in conversion process

if [ $# -ne 0 ]; then
	PARAMS=$@;
fi

cd $(pwd) #changes to current working directory

shopt -s nullglob nocaseglob extglob #add shell builtin commands

img_files=$(find . -name \*.jpeg -o -name \*.jpg -o -name \*.png  -o -name \*.tiff  -o -name \*.tif  -o -name \*.bmp) #find all files in current directory and subfolders, file formats can be added here
gif_files=$(find . -name \*.gif -o)

GREEN='\033[0;32m'

total=$(echo "$img_files" | wc -l) #total number of img files to be converted
totalGIF=$(echo "$gif_files" | wc -l)
num=0
numGIF=0

echo "There are $total files to be converted." #files left to be converted

for IMG in $img_files #for loop that will convert all img files to webp
do
    ((num++)) #tracks number of files converted
    echo "Converting $IMG, $num/$total"  #shows in terminal current file being converted
    cwebp $PARAMS "$IMG" -o "${IMG%.*}".webp;  #converts file to webp format
    echo -e "\e[0;32m $num out of $total images left to convert \e[0m"  #shows in terminal current number of files left to be converted
    echo -e "\e[0;32m $numGIF out of $totalGIF GIFs left to convert \e[0m"  #shows in terminal current number of files left to be converted
done

for GIF in $gif_files #for loop that will convert all img files to webp
do
    ((numGIF++)) #tracks number of files converted
    echo "Converting $GIF, $num/$total"  #shows in terminal current file being converted
    cwebp $PARAMS "$GIF" -o "${GIF%.*}".webp;  #converts file to webp format
    echo -e "\e[0;32m $numGIF GIFs out of $totalGIF left to convert \e[0m"  #shows in terminal current number of files left to be converted
done