#!/usr/bin/env sh

if [ -z "$2" ]; then
    echo "Usage: $0 video outfile [fps] [imagename.type]" >&2
    exit 1
elif [ -z "$3" ]; then
    fps=10
else
    fps=$3
fi

if [ -z "$4" ]; then
    imageprefix='frame'
    imageext='png'
else
    imageprefix="${4%.*}"
    imageext="${4##*.}"
fi

ffmpeg -i "$1" -strict -2 -pix_fmt gray -vf crop=960:720,scale=320:240 -r "$fps" "$imageprefix-%3d.$imageext"
$(dirname $0)/images_to_binary.py "$2" "$imageprefix"-*."$imageext"
