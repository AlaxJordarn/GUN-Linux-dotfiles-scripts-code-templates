#########this is a script to lookup all the ss stocks #############

#infint loop if u want 
#z=2;
#while [ $z -eq 2 ]
#do
####### the main code ###########
echo "script  by "$(whoami)" sarkar"
x=$(ss -natu | wc -l)  ;  ####findes the number of line in ss command 


x=$[ x - 2 ] ;  ### minus the 2 text lines 
echo " ";
echo "tcp connected :" $x; 
echo " ";
p=1;  
y=3;
while [ $p -le $x ]
do

nslookup $(ss -natu | head -$y | tail -1 |  cut  -b60-73) | head -1 
p=$[ p + 1 ]
y=$[ y + 1 ]
#sleep 1;
done
#clear

#done
