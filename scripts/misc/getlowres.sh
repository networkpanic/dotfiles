exiftool -sss -r -csv -imagesize /mnt/cloud/in/movies/*/{*.avi,*.mp4,*.mkv} | grep -ve 19 -ve 3840 -ve 4k -ve x1080 > lowres.csv
