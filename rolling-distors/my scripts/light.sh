#echo  enter the ammount of brightness in number

read -p "Enter the ammount of brightness in percent  "  x;
#read y;

#if [ $($whoami) -eq 'root' ]
#then
##z=$y * 1000
#echo $x > /sys/class/backlight/intel_backlight/brightness
#fi
#if [ $($whoami) == ""$(whoami)"" ]
#then 
#xrandr --output eDP1 --brightness .$x
#echo $z
#redshift -O 4000
#fi
###################

###################
#while read -r  x
#do 
#if [  $x -eq 1 ]
#then 
#xbacklight -inc $x%
#fi
#if [ $x -eq 2 ]
#then 
#xbacklight -dec $x%
#fi
#done

xbacklight -set  $x%

done
