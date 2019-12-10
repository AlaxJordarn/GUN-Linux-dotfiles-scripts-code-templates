#locate -b $(echo "Search a file to open" | dmenu   -f   ) | dmenu -l 30 | xargs -I {} termite -e " nano "{}""


#select the file editor
y=$(echo  -e "nano   \n   vim    \n   vi  " | dmenu -i -p "Select the file editor")

#exit if no imput
if [ $y  ==  ]
then
exit
fi



#imput file
x=$(echo "Search a file to open" | dmenu   -f   ) 



#exit if no imput
if [ $x  ==  ]
then
exit
fi





#locate and open with $y 
locate $x | dmenu -l 30 | xargs -I {}  termite -e " $y "{}" "
#locate and open only vim 
#locate $x | dmenu -l 30 | xargs -I {} termite -e " vim "{}" "
#locate and open only nano 
#locate $x | dmenu -l 30 | xargs -I {} termite -e " nano  "{}" "

