#!/bin/bash


HOME_DIR="/home/pi/Desktop/webcam_test/"


fswebcam $HOME_DIR/image.jpg
curl -X POST -F file=@$HOME_DIR/image.jpg http://eyeohtee.ie:8000
