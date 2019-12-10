rm -rf /home/$(whoami)/browser-home/.cache
rm -rf /home/$(whoami)/browser-home/.local
rm -rf /home/$(whoami)/.mozilla
rm -rf /home/$(whoami)/.cache/mozilla
rm -rf /home/$(whoami)/.mozilla

killall firefox

#killall sh
killall nautilus

firejail --noprofile  --protocol=unix,inet  --env=LD_LIBRARY_PATH=/home/"$(whoami)"/w/palemoon/ --private-bin=palemoon  --hosts-file=/etc/hosts --nodbus   --apparmor --machine-id  --disable-mnt  --private-cache  --private-etc=hosts,ca-certificates,ssl  --private-opt=all --seccomp --read-only=all --noroot --debug --caps.drop=all  --shell=none --ipc-namespace   --cpu=2 --apparmor --private=/home/"$(whoami)"/w/palemoon  --noexec=all  --noexec=/tmp --nogroups --nonewprivs --netfilter --blacklist=all --netfilter --private-dev --netfilter=/etc/firejail/nolocal.net  --private-opt=all   --private-tmp --dns=8.8.8.8 --dns=8.8.4.4  palemoon -no-remote   -noprofile  -private -console 

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
