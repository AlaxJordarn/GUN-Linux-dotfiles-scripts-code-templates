
x="$(xdpyinfo | awk '/dimensions:/ { print $2; exit }')"



echo "****** webcam ******"
#echo "rander size:"
#echo "1. 1280x720"
#echo "2. 1920x1080"
#echo "3. 1600x900"
#echo "4. 2048x1152"
#read x;

####################################################
###########        mplayer
#################################################


#
#if [ $x -eq 1 ]
#
#then
#
##1280x780
#
#mplayer -ontop -noborder -geometry 320x240+955+478 -tv driver=v4l2:width=320:height=240:device=/dev/video0 tv:// 
#
##420x240+855+480
#
#fi
#
#if [ $x -eq 2 ]
#
#then
#
##1920x1080
#
#mplayer -ontop -noborder -geometry 420x314+1480+750 -tv driver=v4l2:width=320:height=240:device=/dev/video0 tv:// 
#
##420x240+1450+800
#
#fi
#
#
#
#if [ $x -eq 3 ]
#
#then
#
##1600x900
#
#mplayer -ontop -noborder -geometry 420x314+1178+580 -tv driver=v4l2:width=320:height=240:device=/dev/video0 tv:// 
#
#420x240+1178+660 
#
#fi
#
#if [ $x -eq 4 ]
#
#then
#2048x1152
#
#mplayer -ontop -noborder -geometry 550x410+1480+730 -tv driver=v4l2:width=320:height=240:device=/dev/video0 tv:// 
#
#fi



####################################################
###########        mpv
#################################################
if [ $x -eq 1 ]
then
#1280x780
mpv -geometry 420x240+855+480  --demuxer-lavf-format video4linux2 --demuxer-lavf-o-set input_format=mjpeg av://v4l2:/dev/video0
#420x240+855+480
fi
if [ $x -eq 2 ]
then
#1920x1080
mpv -geometry 420x240+1450+800 --demuxer-lavf-format video4linux2 --demuxer-lavf-o-set input_format=mjpeg av://v4l2:/dev/video0
#420x240+1450+800
fi

if [ $x -eq 3 ]
then
#1600x900
mpv -geometry 420x240+1178+660 --demuxer-lavf-format video4linux2 --demuxer-lavf-o-set input_format=mjpeg av://v4l2:/dev/video0
#420x240+1178+660 
fi
if [ $x -eq 4 ]
then
#2048x1152
mpv  -geometry 550x410+1480+730  --demuxer-lavf-format video4linux2 --demuxer-lavf-o-set input_format=mjpeg av://v4l2:/dev/video0
fi
##############
