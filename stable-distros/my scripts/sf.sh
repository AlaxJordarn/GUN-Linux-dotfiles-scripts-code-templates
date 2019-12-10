rm -rf /home/$(whoami)/browser-home/.cacheu
rm -rf /home/$(whoami)/browser-home/.localm
rm -rf /home/$(whoami)/.mozilla
rm -rf /home/$(whoami)/.cache/mozilla
rm -rf /home/$(whoami)/.mozilla

killall firefox

#killall sh
killall nautilus

firejail --noprofile --nodbus --env=LD_LIBRARY_PATH=none --hostname=why-are-u-stocking-me --protocol=unix,inet   --apparmor  --machine-id --disable-mnt --nogroups --read-only=all  --private-dev  --nonewprivs  --private --private-cache  --disable-mnt    --private-etc=hosts,ssl,ca-certificates,group  --private-opt=all --seccomp --read-only=all --noroot --debug --caps.drop=all  --shell=none  --noroot  --ipc-namespace   --cpu=2 --apparmor --noexec=all  --noexec=/tmp --nogroups --nonewprivs --netfilter --blacklist=all --netfilter --netfilter=/etc/firejail/nolocal.net  --private-opt=all  --private-bin=surf,sh,dmenu,xprop,proxychains4  --private-tmp  --dns=8.8.8.8 --dns=8.8.4.4   surf -sgdkmp  duckduckgo.com/lite/ 


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
#exit
#exit
