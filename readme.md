# Live Photo Mover
iPhones now take a video every time you take a photo. It's hard to tell the difference between normal
videos and these "live photos" when importing. This script chucks them in a different folder. Probably.

Looking at two files, I found a difference in the EXIF data. Live photos seem to have the ContentIdentifier tag set, and normal videos don't.

This script requires exiftool to be installed, and I've only used it once, so good luck!

# Usage
`livephotomv.sh -o <directory to move live photos to> <input files ...>`

For example: `livephoto.sh -o ./livephotos/ ./*`

