

#b="$(hostname --ip-addresses)"
ss -natu | grep wl | cut -c32-45
#ss -natu | head -n 2 | tail -n -1 | cut -c33-44
#ip addr show | tail -n 4 | head -n 1 | cut -c 10-21

echo $b;
#notify-send " Killing all tcp";
#echo -en "\a"#x=1;#while [ $x > 0 ]#do #timeout 40
tcpkill host -9  $(ip route get 1 | head -1 | cut -d' ' -f7)
#sleep 15
#clear

echo -en "\07"
#done

