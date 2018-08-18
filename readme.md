#Live Photo Mover
iPhones now take a video every time you take a photo. It's hard to tell the difference between normal
videos and these "live photos" when importing. This script chucks them in a different folder. Probably.

#Usage
livephotomv.sh -o <directory to move live photos to> <input files ...>

eg. livephoto.sh -o ./livephotos/ ./*

Normal videos and live photo videos seem to differ in EXIF.
Live photos seem to have the ContentIdentifier tag, and normal vids don't.
This requires exiftool to be installed
I've only used this once, good luck