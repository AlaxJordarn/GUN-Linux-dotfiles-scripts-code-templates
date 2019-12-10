rm -rf /home/"$(whoami)"/browser-home/.cache
rm -rf /home/"$(whoami)"/browser-home/.local
rm -rf /home/"$(whoami)"/.mozilla
rm -rf /home/"$(whoami)"/.cache/mozilla
rm -rf /home/"$(whoami)"/.mozilla
mkdir /home/"$(whoami)"/transmission

killall firefox
killall sh
killall nautilus
killall virtualbox
killall transmission-gtk


firejail --noprofile --shell=none --nodvd --ignore=icmp --noexec=all --ipc-namespace --nodvd --seccomp --disable-mnt --read-only=all --read-only=~/home/"$(whoami)"/browser-home --noroot --debug  --caps.drop=all  --cpu=2 --apparmor  --private=/home/"$(whoami)"/transmission --noexec=all --noexec=/tmp --nogroups   --nonewprivs --blacklist=all --netfilter --netfilter=/etc/firejail/nolocal.net  --private-dev --private-tmp --dns=8.8.8.8 --dns=8.8.4.4   transmission-gtk 

rm -rf /home/"$(whoami)"/browser-home/.cache
rm -rf /home/"$(whoami)"/browser-home/.local
rm -rf /home/"$(whoami)"/.mozilla
rm -rf /home/"$(whoami)"/.cache/mozilla
rm -rf /home/"$(whoami)"/.mozilla
rm -rf /home/"$(whoami)"/transmission

killall firefox
killall bash 
killall sh
killall nautilus
killall transmission-gtk
killall gnome-terminal

