Convert directory of videos to MP4 in parallel
 $ for INPUT in *.avi ; do echo "${INPUT%.avi}" ; done | xargs -i -P9  HandBrakeCLI -i "{}".avi -o "{}".mp4

 Find all files recursively with specified string in the filename and output any lines found containing a different string.
 $ find . -name *conf* -exec grep -Hni 'matching_text' {} \; > matching_text.conf.list


2
Dump network traffic with tcpdump to file with time-stamp in its filename
 $ date +"%Y-%m-%d_%H-%M-%Z" | xargs -I {} bash -c "sudo tcpdump -nq -s 0 -i eth0 -w ./dump-{}.pcap"


1
Create a visual report of the contents of a usb drive
 $ find /path/to/drive -type f -exec file -b '{}' \; -printf '%s\n' | awk -F , 'NR%2 {i=$1} NR%2==0 {a[i]+=$1} END {for (i in a) printf("%12u %s\n",a[i],i)}' | sort -nr


0
Count the lines of each file extension in a list of files
 $ git ls-files | xargs wc -l | awk -F ' +|\\.|/' '{ sumlines[$NF] += $2 } END { for (ext in sumlines) print ext, sumlines[ext] }'



0
Send a file by email as attachment
 $ uuencode /var/log/messages messages.txt | mailx -s "/var/log/messages on $HOST" me@example.com


 Create fattal tone mapped images from a directory of raw images
 $ for img in /path/to/rawimages/*.RW2; do pfsin ${img} | pfssize -x 1024 -y 768 | pfstmo_fattal02 -v -s 1 | pfsout /path/to/finished/${img%%}.jpg; done
— by mmaki on June 3, 2013, 10:45 p.m.



dotbot

https://github.com/qobilidop/dotbot-env
https://github.com/sobolevn/dotbot-pip
https://github.com/vbrandl/dotfiles
https://github.com/magicmonty/dotfiles_dotbot
https://github.com/mstrzele/dotfiles
https://github.com/anishathalye/dotbot/
