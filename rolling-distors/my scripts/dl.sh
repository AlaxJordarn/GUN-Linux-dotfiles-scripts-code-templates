rm -rf /home/"$(whoami)"/browser-home/.cache
rm -rf /home/"$(whoami)"/browser-home/.local
rm -rf /home/"$(whoami)"/.mozilla
rm -rf /home/"$(whoami)"/.cache/mozilla
rm -rf /home/"$(whoami)"/.mozilla

killall dillo
killall sh
killall nautilus
killall virtualbox
killall xbrlapi

 firejail   --noprofile --private-dev --private-etc=all --private-opt=all --private-tmp --disable-mnt  --shell=none --nodvd --ignore=icmp --noexec=all --ipc-namespace --nodvd  --disable-mnt --read-only=all --read-only=~/home/"$(whoami)"/browser-home  --noroot --debug  --caps.drop=all  --cpu=2  --private --noexec=all --noexec=/tmp --nogroups   --nonewprivs --blacklist=all --netfilter --netfilter=/etc/firejail/nolocal.net  --private-dev --private-tmp  --seccomp --apparmor  --dns=8.8.8.8 --hostname=uay --name=ugay --hostname=uay --dns=8.8.4.4   dillo 

killall xbrlapi
rm -rf /home/"$(whoami)"/browser-home/.cache
rm -rf /home/"$(whoami)"/browser-home/.local
rm -rf /home/"$(whoami)"/.mozilla
rm -rf /home/"$(whoami)"/.cache/mozilla
rm -rf /home/"$(whoami)"/.mozilla

killall dillo
killall sh
killall nautilus


