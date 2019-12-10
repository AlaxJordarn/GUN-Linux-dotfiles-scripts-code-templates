#!/bin/bash 

#echo press 1 to enable nightlight 
#echo press any to disable it
 
#read -s x;

#if [ $x -eq 1 ]

#then
#echo enter the ammout of red colour 10000-1000
#read y;
#redshift -O $y;

#gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true 
#notify-send "enabling night-light"
#echo -e "\a"

#else 

#redshift -x

#gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false
#notify-send "disabling night-light"
#echo -e "\a"
#fi

#printf "\n\n *****it's done***** \n\n"

#x=$(echo  "5500 \n 5000  \n4500 \n4200 \n4000 \n3800 \n3400  \n3000   \n2000   \n1000   \nNone" | dmenu -i -p  "Select the ammount of colour red :" )
x=$(echo    " 3800 \n3400  \n3000   \n2000   \n1000   \nNone \n 5500 \n 5000  \n4500 \n4200 \n4000" | dmenu -i -p  "Select the ammount of colour red :" )
if [ $x -eq ]
then 
exit
fi
redshift -x
redshift -O  $x
