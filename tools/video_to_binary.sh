#!/usr/bin/env sh

if [ -z "$2" ]; then
    echo "Usage: $0 video outfile [imagename.type]" >&2
    exit 1
elif [ -z "$3" ]; then
    imageprefix='frame'
    imageext='png'
else
    imageprefix="${3%.*}"
    imageext="${3##*.}"
fi

ffmpeg -i "$1" -strict -2 -pix_fmt gray -vf crop=960:720,scale=320:240 -r 10 "$imageprefix-%3d.$imageext"
$(dirname $0)/images_to_binary.py "$2" "$imageprefix"-*."$imageext"
