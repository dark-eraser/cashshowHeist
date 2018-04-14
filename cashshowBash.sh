#!/bin/bash
screenshot="/home/david/Documents/ruby/screenshot"
import -window 0x440004d -crop 1200x680-0+0  $screenshot.png
mogrify  -gravity north -chop x160 $screenshot.png

 sudo /etc/sudoers.d/textcleaner -g $screenshot.png $screenshot.png
tesseract $screenshot.png $screenshot
exit
