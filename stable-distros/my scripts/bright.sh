echo enter the ammount of brightness in number

read x;

echo $x > /sys/class/backlight/intel_backlight/brightness


