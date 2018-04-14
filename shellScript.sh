#!/bin/bash
STR="@"
FILENAME = "out.avi"
if [$STR]; then
  FILENAME = "$@"
else
  echo "ERROR"
  FILENAME = "out.avi"
fi
#FILENAME=$(echo $FILENAME | sed #s/\/\\/g';
ffmpeg  -f x11grab -s 1920x1080 -r 30 -i :0.0  "$FILENAME"
