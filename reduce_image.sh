#!/bin/bash
# Dependancies
# - img-optimize - https://virtubox.github.io/img-optimize/
# - imagemagick
# - jpegoptim
# - optipng

FOLDER="/mnt/e/Abdul Rafay/Documents/GitHub/Blog-website/static/images/"

# max width
WIDTH=800

# max height
HEIGHT=600

#resize png or jpg to either height or width, keeps proportions using imagemagick
find ${FOLDER} -iname '*.jpg' -o -iname '*.png' -exec convert \{} -verbose -resize $WIDTHx$HEIGHT\> \{} \;
img-optimize --std --path ${/mnt/e/Abdul Rafay/Documents/GitHub/Blog-website/static/images/new}
