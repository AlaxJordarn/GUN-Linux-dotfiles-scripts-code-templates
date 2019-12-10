#echo "Hello Alan!! Were do you want to pullout music from??"
#echo "1. Soundcloud"
#echo "2. Youtube"
#read x
#if [ $x -eq 1 ]
#then
echo "playing  music from soundcloud playlist "
firejail --quiet mpv --no-video https://soundcloud.com/kuroneko-akatsuki/likes
#fi
#if [ $x -eq 2 ]
#then
#echo "Select the playlist you want to play:"
#echo "
#firejail mpv 'https://www.youtube.com/playlist?list=PLLS-AyF1TjzJP6tpDYUxuNE36LciH-aXN' --msglevel=ffmpeg=trace
