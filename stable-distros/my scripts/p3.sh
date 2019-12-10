rm -rf /home/"$(whoami)"/browser-home/.cache
rm -rf /home/"$(whoami)"/browser-home/.local
rm -rf /home/"$(whoami)"/.mozilla
rm -rf /home/"$(whoami)"/.cache/mozilla
rm -rf /home/"$(whoami)"/.mozilla

killall firefox

#killall sh
killall nautilus

firejail  --noprofile --hostname=u-are-gay-if-u-are-seeing-this   --apparmor  --protocol=unix,inet  --private-cache --no3d --seccomp --read-only=all --noroot --debug --caps.drop=all --shell=none --ipc-namespace --machine-id  --cpu=2 --apparmor --private --noexec=/tmp --nogroups --nonewprivs --netfilter --blacklist=all --netfilter --netfilter=/etc/firejail/nolocal.net  --private-opt=all --private-etc=ssl,ca-certificates,hosts,hosts.deny  --private-bin=palemoon --private-dev --private-tmp --dns=8.8.8.8 --dns=8.8.4.4   palemoon -no-remote --safe-mode  -noprofile  -private -console

rm -rf /home/"$(whoami)"/browser-home/.cache
rm -rf /home/"$(whoami)"/browser-home/.local
rm -rf /home/"$(whoami)"/.mozilla
rm -rf /home/"$(whoami)"/.cache/mozilla
rm -rf /home/"$(whoami)"/.mozilla

killall firefox
killall bash 
#killall sh
killall nautilus
killall gnome-terminal
