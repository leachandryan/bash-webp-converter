# Bash-Webp-Converter

This is a bash script that will convert all JPGs, JPEGs, PNGs, and GIFs to webp. This script is also recursive so it will find and convert all images/GIFs in working directory and sub folders. 

To use simply place in desired folder and run from the CLI "bash webpconverter.sh". To convert all images on machine/server, place scirpt in root directory and bash away. 

This script will not create multiple copies of webp if ran multiple times but will instead overwrite previous webp images. Webp images will keep it's parent image's name only changing the file extension. New webp files will also be created and placed in the same folder as parent image.  
