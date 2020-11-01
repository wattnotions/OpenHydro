Scripts for taking images with webcam connected to raspberry pi and upload them to server.

The script on the pi just grabs a frame from the webcam using fswebcam and then sends it using via a HTTP POST request

On the server side there is a python script that uses the SimplyHTTPServer library to receive the image file from
the raspi and save it in the same directory as the script itself. The python script is started using a shell
script. I was trying to avoid directory issues by using the script instead of just adding the python command
directly in cron. The cron just runs the start_server.sh script at boot. (cron file is named root)

