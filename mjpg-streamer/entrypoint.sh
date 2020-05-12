#!/usr/bin/env sh
set -e

FRAMES=${ENV_FPS:-"30"}
RESOLUTION=${ENV_RESOLUTION:-"640x480"}
PORT=${ENV_PORT:-"8080"}
LOCATION=${ENV_LOCATION:-"/usr/local/www"}
CAMERA=${ENV_CAMERA:-"/dev/video0"}

export LD_LIBRARY_PATH="/mjpg-streamer/mjpg-streamer-experimental"
./mjpg_streamer -i "input_uvc.so -d $CAMERA -f $FRAMES -r $RESOLUTION" -o "output_http.so -p $PORT -w $LOCATION "
