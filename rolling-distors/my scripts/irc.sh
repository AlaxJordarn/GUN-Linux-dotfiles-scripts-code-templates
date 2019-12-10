rm -rf /home/$(whoami)/browser-home/.cache
rm -rf /home/$(whoami)/browser-home/.local
rm -rf /home/$(whoami)/.mozilla
rm -rf /home/$(whoami)/.cache/mozilla
rm -rf /home/$(whoami)/.mozilla

killall firefox

#killall sh
killall nautilus

firejail --noprofile --apparmor --machine-id  --disable-mnt  --private-cache  --ignore=seccomp.drop --ignore=shell --private-etc=hosts,ca-certificates,ssl  --private-opt=all --seccomp --read-only=all --noroot --debug --caps.drop=all  --shell=none --ipc-namespace   --cpu=2 --apparmor --private=/home/"$(whoami)"/w/palemoon/  --noexec=/tmp --nogroups --nonewprivs --netfilter --blacklist=all --netfilter --private-dev --netfilter=/etc/firejail/nolocal.net  --private-opt=all  --private-bin=irssi  --private-tmp --dns=8.8.8.8 --dns=8.8.4.4  irssi 

rm -rf /home/$(whoami)/browser-home/.cache
rm -rf /home/$(whoami)/browser-home/.local
rm -rf /home/$(whoami)/.mozilla
rm -rf /home/$(whoami)/.cache/mozilla
rm -rf /home/$(whoami)/.mozilla

killall firefox
#killall bash 
killall sh
killall nautilus
killall gnome-terminal
