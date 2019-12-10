echo "*******please run this as root*********"
echo "1. start tor"
echo "2. stop tor"
read x;
if [   $x -eq 1 ] 
then
#./re
firecfg --clean
systemctl unmask tor
systemctl start tor
systemctl mask tor
iptables-restore < /etc/iptables-lo
ip6tables-restore < /etc/ip6tables-lo

echo "tor is running and LOCAL-FIREWALL is open!!!!!!"
echo "waiting to start tor"
#printf" \n*******\n "
echo "please start tor"

firecfg
#printf" \n \n "
echo "********* dont forget to stop tor after browsing ********"
fi

if [ $x -eq 2 ] 
then
echo "stoping  tor.sh script now"
systemctl stop tor
systemctl mask tor
firecfg
iptables-restore < /etc/iptables-new
ip6tables-restore  < /etc/ip6tables-new
./stp
echo "done"
echo "firewall set to default";
fi

