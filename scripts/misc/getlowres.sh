exiftool -sss -r -csv -imagesize /directory/to/files/*.mp4 > out/to/file/output.txt

find . -type f \( -iname "*.avi" -o -iname "*.mp4" -o -iname "*.mkv" \) -execdir mediainfo {} \; | egrep "(Complete name|Width|Height)"
 find -type f \( -iname "*.avi" -o -iname "*.mp4" -o -iname "*.mkv" \) -exec mediainfo "{}" \; -exec bash -c 'sm=$(mediainfo ${} | grep -v 720) : ; echo $sm' \;
mediainfo --Inform="Video;Resolution=%Width%x%Height%\nCodec=%CodecID%" movies/10_Cloverfield_Lane_\(2016\)
