#echo "1.1920x1080"
#echo "2.1280x720"
#echo "3.2048x1152"
#echo "4.1600x900"
#echo "5.1024x576"
#echo "6.960x540"
#echo "7.1368x768"
#echo "enter value:"
#
#read x;
#killall conky
#if [ $x -eq 1 ]
#then 
#xrandr --output eDP1 --mode 1920x1080 --rate 59.93
#fi
#
#if [ $x -eq  4 ]
#then 
#xrandr --output eDP1 --mode 1600x900 --rate 35.00
##59.82
#fi
#
#if [ $x -eq 7 ]
#then 
#xrandr --output eDP1 --mode 1368x768 --rate 59.85
#fi
#
#if [ $x -eq 2 ]
#then 
#
#
#xrandr --output eDP1 --mode 1280x720 --rate 59.74
#
#fi
#
#if [ $x -eq 3 ]
#then 
#xrandr --output eDP1 --mode 2048x1152  --rate 59.91
#fi
#
#
#if [ $x -eq 5 ]
#then 
#xrandr --output eDP1 --mode 1024x576 --rate 59.82
#fi
#
#if [ $x -eq 6 ]
#then 
#xrandr --output eDP1 --mode 960x540 --rate 59.82
#fi
#
#nitrogen --restore 
#./conky
################################################exit


#new settings 
echo   "1920x1080\n1280x720\n1600x900\n2048x1152\n1368x768\n960x540\n1024x576" | dmenu -i -p  "select the screen resulation :" | xargs -I {} xrandr --output eDP1 --mode "{}"
nitrogen --restore
