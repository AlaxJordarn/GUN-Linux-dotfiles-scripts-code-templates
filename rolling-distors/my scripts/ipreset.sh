   iptables -P INPUT ACCEPT
   iptables -P OUTPUT ACCEPT
   iptables -P FORWARD ACCEPT
   iptables -F INPUT
   iptables -F OUTPUT
   iptables -F FORWARD 
   iptables -F
   ip6tables -P INPUT ACCEPT
   ip6tables -P OUTPUT ACCEPT
   ip6tables -P FORWARD ACCEPT
   ip6tables -F INPUT
   ip6tables -F OUTPUT
   ip6tables -F FORWARD 
   ip6tables -F



echo iptables reset completed 
