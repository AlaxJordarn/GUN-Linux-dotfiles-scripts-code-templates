#x=$(date +%Y)
#y=$(date +%m)
#z=$(date +%d)
#a=$(date +%S)
#b=$x-$y-$z-$a


#ffmpeg -video_size  $(xdpyinfo | awk '/dimensions:/ { print $2; exit }') -framerate 25 -f x11grab -i :0.0+100,200 -f alsa -ac 2 -i hw:0 output.mkv


#ffmpeg -y \
#-f x11grab \
#-s $(xdpyinfo | awk '/dimensions:/ { print $2; exit }')  \
#-i :0.0 \
#-f alsa -i default \ 

#-c:v libx264 -r 30 -c:a flac $filename
#-c:v ffvhuff -r 30 -c:a flac $filename
#-f pulse -ac 1 -ar 44100 -i default \

#ffmpeg -y -f x11grab -s $(xdpyinfo | awk '/dimensions:/ { print $2; exit }')  -i :0.0 -f alsa -i default  ffmpeg-record-$b.mp4


ffmpeg -y -f x11grab -s $(xdpyinfo | awk '/dimensions:/ { print $2; exit }')  -i :0.0 -f alsa -i default  ffmpeg-record-$(date +%Y)-$(date +%m)-$(date +%d){$(date +%T)}.mp4 & 
echo  " quit " | dmenu -i -b -p  "Now Recording :"  | xargs killall ffmpeg 


