#!/usr/bin/bash
while getopts ":o:" opt; do
	case $opt in
	o)
		echo "-o was triggered, Parameter: $OPTARG" >&2
		for file in "$@"; do
		[ -e "$file" ] || continue
			if [[ "$file" != "$OPTARG" ]]; then
				if [[ $(exiftool -ContentIdentifier "$file") ]]; then
					echo "Live Photo Video"
					mv -v "$file" "$OPTARG"
				else
					echo "Normal Video"
				fi
			else
				echo "not doing owt"
			fi
		done
		
		exit 1
		;;
	\?)
		echo "Invalid option: -$OPTARG" >&2
		exit 1
		;;
	:)
		echo "Option -$OPTARG requires an argument." >&2
		exit 1
		;;
  esac
done


echo "Usage:"
echo "livephotomv.sh -o <directory to move live photos to> <input files ...>"
echo ""
echo "eg. livephoto.sh -o ./livephotos/ ./*"
echo ""
echo "Normal videos and live photo videos seem to differ in EXIF."
echo "Live photos seem to have the ContentIdentifier tag, and normal vids don't."
echo "This requires exiftool to be installed"
echo "I've only used this once, good luck"

