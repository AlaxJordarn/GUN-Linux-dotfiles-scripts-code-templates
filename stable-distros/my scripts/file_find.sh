#locate -b $(echo "Search a file to open" | dmenu   -f   ) | dmenu -l 30 | xargs -I {} sakura -e " nano "{}""


#select the file editor
#y=$(echo  -e "nano   \n   vim    \n   vi  " | dmenu -i -p "Select the file editor")

#exit if no imput
#if [ $y  -eq  ]
#then
#exit
#fi



#imput file
x=$(echo "Search a file to open" | dmenu   -f   ) 



#exit if no imput
if [ $x  ==  ]
then
exit
fi

#permission

#select parmission
p=$(echo -e  "normal   \n  root  " | dmenu -i -p "Select the parmission" )

#exit if no imput

if [ $p  ==  "normal" ]
then
locate -b $x | dmenu -l 30 | xargs -I {} sakura -e " nano  "{}" "
fi

if [ $p  == "root" ]
then
locate -b $x | dmenu -l 30 | xargs -I {} sakura -e "sudo  nano  "{}" "
fi


#if [ $p  -eq  ]
#then
#exit
#fi



#locate and open with $y 
#locate -b $x | dmenu -l 30 | xargs -I {}  sakura -e " $y "{}" "
#locate and open only vim 
#locate -b $x | dmenu -l 30 | xargs -I {} sakura -e " vim "{}" "
#locate and open only nano 
#locate -b $x | dmenu -l 30 | xargs -I {} sakura -e " nano  "{}" "

