
killall virtualbox*
killall fakeroot
fakeroot  firejail    --private-opt=all --private-etc=ssl,ca-certificates,passwd,groups,virtualbox --ignore=shell --apparmor --noexec=all --noexec=/tmp --caps.drop=all --private-cache --private-tmp --ignore=icomp --ipc-namespace   --nogroups --read-only=all   --ipc-namespace  --blacklist=all --noexec=all --disable-mnt	 --private=/run/media/"$(whoami)"/VG/"VirtualBox VMs" --noprofile --shell=none  --ignore=icomp   --netfilter --netfilter=/etc/firejail/nolocal.net  --dns=8.8.8.8 --dns=8.8.4.4  --private-cache  --private-tmp    virtualbox --execute-all-in-iem --normal  --no-aggressie-caching
exit
 killall virtualbox*
 killall virtualbox
 killall firefox


killall fakeroot
