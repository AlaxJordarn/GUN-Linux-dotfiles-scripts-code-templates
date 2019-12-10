rm -rf /home/$(whoami)/browser-home/.cache
rm -rf /home/$(whoami)/browser-home/.local
rm -rf /home/$(whoami)/.mozilla
rm -rf /home/$(whoami)/.cache/mozilla
rm -rf /home/$(whoami)/.mozilla

killall firefox

#killall sh
killall nautilus

firejail --noprofile --hostname=u-are-gay-if-u-are-seeing-this --hosts-file=/etc/hosts   --apparmor --machine-id  --disable-mnt  --private-cache  --ignore=seccomp.drop --ignore=shell --private-etc=group,hosts,ca-certificates,ssl  --private-opt=all --seccomp --read-only=all --noroot --debug --caps.drop=all  --shell=none --ipc-namespace   --cpu=2 --apparmor --private --noexec=all  --noexec=/tmp --nogroups --nonewprivs --netfilter --blacklist=all --netfilter --private-dev --netfilter=/etc/firejail/nolocal.net  --private-opt=all  --private-bin=firefox-esr  --private-tmp --dns=8.8.8.8 --dns=8.8.4.4   firefox-esr -no-remote   -noprofile  -private -console 

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
