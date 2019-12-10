re=1
while [ $re -eq 1 ]
do

echo -e "\e[1;31mwhich playlist you want to play?\e[0m"
p=1
q=$(cat /home/$(whoami)/.config/.yt-playlist | grep "#"  | wc -l )
while [ $p -le $q ]
do
printf "$p. "
echo -e "\e[1;34m$(cat /home/$(whoami)/.config/.yt-playlist | grep "#" | sed 's/#//g'| head -$p | tail -1)\e[0m"
p=$(expr $p + 1)
done
read x;
echo "if with video press 1"
read p;


if [ $p -eq 1 ]
then
firejail   mpv --ytdl-format=best "$(cat /home/$(whoami)/.config/.yt-playlist | grep "$(cat /home/$(whoami)/.config/.yt-playlist  | grep "#" | head -"$x" | tail -1)" -A 1 | tail -1)"
fi

if [ $p != 1  ]
then
firejail  mpv --ytdl-format=best  --no-video  "$(cat /home/$(whoami)/.config/.yt-playlist | grep "$(cat /home/$(whoami)/.config/.yt-playlist  | grep "#" | head -"$x" | tail -1)" -A 1 | tail -1)"
fi





clear
done
