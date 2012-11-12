#!/usr/bin/env sh

crop=false
fps=10
imageprefix='frame'
imageext='png'

usage="Usage: $0 [-c] [-f fps] [-s starttime] [-d duration] [-n imagename.ext] video outfile\n\n       -c Crop widescreen video instead of padding it.\n       -f Set FPS of output video. Default is 10.\n       -s Start video at \$starttime seconds.\n       -d Stop after \$duration seconds.\n       -n Name of the temporary image files created. Default is frame.png."

while getopts "f:cs:d:n:" opt; do
    case $opt in
        c)
            crop=true
            ;;
        f)
            fps="$OPTARG"
            ;;
        s)
            starttime="-ss $OPTARG"
            ;;
        d)
            duration="-t $OPTARG"
            ;;
        n)
            imageprefix="${OPTARG%.*}"
            imageext="${OPTARG##*.}"
            ;;
        \?)
            echo -e "$usage" >&2
            exit 1
            ;;
    esac
done

shift $((OPTIND-1))

if [ -z "$2" ]; then
    echo -e "$usage" >&2
    exit 1
fi

if $crop; then
    filter="scale=-1:240,crop=320:240"
else
    filter="scale=320:-1,pad=320:240:0:(oh-ih)/2"
fi

ffmpeg $starttime -i "$1" -strict -2 -pix_fmt gray -vf "$filter" $duration -r "$fps" "$imageprefix-%5d.$imageext"
$(dirname $0)/images_to_binary.py "$2" "$imageprefix"-*."$imageext"
