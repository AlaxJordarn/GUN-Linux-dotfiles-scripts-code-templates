rm -rf /home/$(whoami)/browser-home/.cache
rm -rf /home/$(whoami)/browser-home/.local
rm -rf /home/$(whoami)/.mozilla
rm -rf /home/$(whoami)/.cache/mozilla
rm -rf /home/$(whoami)/.mozilla

killall firefox

#killall sh
killall nautilus

firejail --noprofile   --apparmor --machine-id  --disable-mnt  --private-cache  --private-etc=hosts,ca-certificates,passwd,ssl  --private-opt=all --seccomp --read-only=all --noroot  --caps.drop=all --nou2f --shell=none --ipc-namespace   --cpu=2 --apparmor --private=/home/"$(whoami)"/w/palemoon/ --nodbus --noexec=all  --noexec=/tmp --nogroups --nonewprivs --netfilter --blacklist=all --nodbus --netfilter --private-dev --netfilter=/etc/firejail/nolocal.net  --private-opt=all    --private-tmp  --protocol=unix,inet --private-bin=sh,newsboat,mpv,youtube-dl,python*,env  --dns=8.8.8.8 --dns=8.8.4.4   newsboat  -r

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
