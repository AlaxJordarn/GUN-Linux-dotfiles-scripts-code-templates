echo "1. home"
echo "2. partations"
read x;
if [ $x -eq 2 ]
then
sudo updatedb -l 0 -U /run/media/"$(whoami)"/
fi
if [ $x -eq 1 ] 
then 
sudo updatedb -l 0 -U /
fi 
