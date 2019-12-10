rm -rf /home/$(whoami)/browser-home/.cache
rm -rf /home/$(whoami)/browser-home/.local
rm -rf /home/$(whoami)/.mozilla
rm -rf /home/$(whoami)/.cache/mozilla
rm -rf /home/$(whoami)/.mozilla

killall firefox-esr

#killall sh
killall nautilus

firejail  --noprofile --hostname=u-are-gay-if-u-are-seeing-this --hosts-file=/etc/hosts  --apparmor --private-etc=ca-certificates,ssl,groups --private-bin=firefox-esr  --ignore=shell --protocol=unix,inet --ignore=seccomp.drop   --private-cache --no3d --seccomp --read-only=all --noroot --debug --caps.drop=all --shell=none --ipc-namespace --machine-id  --cpu=2 --apparmor --private --noexec=all  --noexec=/tmp --nogroups --nonewprivs --netfilter --blacklist=all --netfilter --netfilter=/etc/firejail/nolocal.net  --private-opt=all    --private-dev --private-tmp --dns=8.8.8.8 --dns=8.8.4.4   firefox-esr  -no-remote --safe-mode  -noprofile  -private -console

rm -rf /home/$(whoami)/browser-home/.cache
rm -rf /home/$(whoami)/browser-home/.local
rm -rf /home/$(whoami)/.mozilla
rm -rf /home/$(whoami)/.cache/mozilla
rm -rf /home/$(whoami)/.mozilla

killall firefox-esr
#killall bash 
#killall sh
killall nautilus
killall gnome-terminal
