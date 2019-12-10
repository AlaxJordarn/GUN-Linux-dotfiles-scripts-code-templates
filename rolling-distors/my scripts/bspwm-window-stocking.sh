
x=$(echo -e "window_child_type\nwindow_stocking_type"    | dmenu  -i -p "Select which setting you want to change:" );
echo $x;
if [ $x == ]
then
exit
fi

if [  $x == "window_child_type" ]
then
echo -e "first_child\nsecond_child" | dmenu -i -p "Select window child side  type:   "| xargs -I {} bspc config initial_polarity "{}"
fi
if  [  $x ==  "window_stocking_type" ]
then
echo -e "longest_side\nspiral\nalternate" | dmenu -i -p "Select the window stocking type:   "| xargs -I {} bspc config automatic_scheme "{}"
fi
