echo *******worning this program only runs on root prevladge******
echo chose the the type of iptables rules u want to use

echo 1.normal 
echo 2.local unblocked
echo 3.old
read x; 

if [ $x -eq 1    ]
then
iptables-restore < /etc/iptables-new
ip6tables-restore  < /etc/ip6tables-new
fi
if [ $x -eq 2 ]
then
iptables-restore < /etc/iptables-lo
ip6tables-restore < /etc/ip6tables-lo
fi
if [ $x -eq 3 ]
then 
iptables-restore < /etc/iptables-old
ip6tables-restore < /etc/ip6tables-old
fi
#if [ $x -eq 4 ]
#then
#   iptables -P INPUT ACCEPT
#   iptables -P OUTPUT ACCEPT
#   iptables -P FORWARD ACCEPT
#   iptables -F INPUT
#   iptables -F OUTPUT
#   iptables -F FORWARD 
#   iptables -F

#fi
