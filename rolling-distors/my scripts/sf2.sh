rm -rf /home/$(whoami)/browser-home/.cache
rm -rf /home/$(whoami)/browser-home/.local
rm -rf /home/$(whoami)/.mozilla
rm -rf /home/$(whoami)/.cache/mozilla
rm -rf /home/$(whoami)/.mozilla

killall firefox

#killall sh
killall nautilus

firejail --noprofile --nodbus --protocol=unix,inet --hosts-file=/etc/hosts --env=LD_LIBRARY_PATH=/home/"$(whoami)"/w/palemoon/  --nodbus  --hostname=u-are-gay-if-u-are-seeing-this  --apparmor  --nogroups --read-only=all  --private-dev  --nonewprivs  --private --private-cache   --private-etc=ssl,ca-certificate  --private-opt=all --seccomp --read-only=all --noroot --debug --caps.drop=all  --shell=none --machine-id --noroot  --ipc-namespace   --cpu=2 --apparmor   --noexec=/tmp --nogroups --nonewprivs --netfilter --blacklist=all --netfilter --netfilter=/etc/firejail/nolocal.net  --private-opt=all  --private-bin=ls,surf,sh,bash,curl,dmenu,printf,sed,sleep,st,stterm,xargs,xprop,torsocks  --private-tmp  --dns=8.8.8.8 --dns=8.8.4.4    surf -sgdta  www.duckduckgo.com/lite/

rm -rf /home/$(whoami)/browser-home/.cache
rm -rf /home/$(whoami)/browser-home/.local
rm -rf /home/$(whoami)/.mozilla
rm -rf /home/$(whoami)/.cache/mozilla
rm -rf /home/$(whoami)/.mozilla

killall firefox
#killall bash 
#killall sh
killall nautilus
killall gnome-terminal
exit
exit
