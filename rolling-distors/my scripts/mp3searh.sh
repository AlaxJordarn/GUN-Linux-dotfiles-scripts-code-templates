x=search

while [ $x = 'search' ]
do


locate -i .mp3  | dmenu -l 30 | xargs -I {} mpv --vo=null "{}"  


#y=$(locate -i .mp3  | dmenu -l 30)
#mpv --vo=null "$y" &

#echo -e " exit " | dmenu -i -p " now playing : "  | xargs killall mpv 

x=$(echo -e  " exit \n  search "  | dmenu -i -p "Now playing $x")
echo $x
done
