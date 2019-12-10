echo " chuse a tor browser :"
echo "1.palemoon"
echo "2.surf"
echo "3.firefox-esr"
echo "4.w3m"
#echo "5.links"
read x;
if [ $x -eq 1 ]
then
firejail  --noprofile --hosts-file=/etc/hosts  --disable-mnt --apparmor --ignore=shell --protocol=unix,inet --ignore=seccomp.drop   --private-cache --no3d --seccomp --read-only=all --noroot --debug --caps.drop=all --shell=none --ipc-namespace --machine-id  --cpu=2 --apparmor --private --noexec=/tmp --nogroups --nonewprivs --noexec=all  --netfilter --blacklist=all --netfilter --netfilter=/etc/firejail/nolocal.net  --private-opt=all --private-etc=hosts,ssl,ca-certificates,proxychains.conf,proxychains4.conf  --private-bin=palemoon,tor,torsocks,proxychains4,proxychains --private-dev --private-tmp --dns=8.8.8.8 --dns=8.8.4.4   proxychains4 palemoon -no-remote -noprofile  -safe-mode -private  www.duckduckgo.com/lite/
fi

if [ $x -eq 2 ]
then
#read $y;
firejail  --noprofile --hosts-file=/etc/hosts  --disable-mnt --apparmor  --protocol=unix,inet    --private-cache --no3d --seccomp --read-only=all --noroot --debug --caps.drop=all --shell=none --ipc-namespace --machine-id  --cpu=2 --apparmor --private --noexec=/tmp --nogroups  --noexec=all --nonewprivs --netfilter --blacklist=all --netfilter --netfilter=/etc/firejail/nolocal.net  --private-opt=all --private-etc=hosts,ssl,ca-certificates,proxychains.conf,proxychains4.conf  --private-bin=sh,surf,dmenu,xprop,proxychains4,proxychains --private-dev --private-tmp --dns=8.8.8.8 --dns=8.8.4.4 proxychains4 surf -sgdpkmta www.duckduckgo.com/lite/
fi

if [ $x -eq 3 ]
then
firejail  --noprofile --hosts-file=/etc/hosts --hostname=u-are-gay-if-u-are-seeing-this --disable-mnt --apparmor --ignore=shell --protocol=unix,inet --ignore=seccomp.drop   --private-cache --no3d --seccomp --read-only=all --noroot --debug --caps.drop=all --shell=none --ipc-namespace --machine-id  --cpu=2 --apparmor --private --noexec=/tmp --noexec=all --nogroups --nonewprivs --netfilter --blacklist=all --netfilter --netfilter=/etc/firejail/nolocal.net  --private-opt=all --private-etc=hosts,firefox-esr.cfg,firefox-esr.lss,ssl,lss,passwd,ca-certificates,proxychains.conf,proxychains4.conf  --private-bin=proxychains4,proxychains,firefox-esr --private-dev --private-tmp --noexec=all --dns=8.8.8.8 --dns=8.8.4.4   proxychains4 firefox-esr --safemode  -no-remote -noprofile -private www.duckduckgo.com/lite/
fi

if [ $x -eq 4 ]
then
firejail  --noprofile --hosts-file=/etc/hosts  --disable-mnt --apparmor --ignore=shell --protocol=unix,inet,inet6  --private-cache --no3d --seccomp --read-only=all --noroot --debug --caps.drop=all --shell=none --ipc-namespace --machine-id  --cpu=2 --apparmor --private --noexec=all --noexec=/tmp --nogroups --nonewprivs --netfilter --blacklist=all --netfilter --netfilter=/etc/firejail/nolocal.net  --private-opt=all --private-etc=hosts,ssl,ca-certificates,proxychains.conf,proxychains4.conf  --private-bin=termite,w3m,w3m-img,proxychains4,proxychains --private-dev --private-tmp --dns=8.8.8.8 --dns=8.8.4.4   proxychains4 w3m -no-cookie -M  -num -4  www.duckduckgo.com
fi

#if [ $x -eq 5 ]
#then
#firejail  --noprofile --hosts-file=/etc/hosts --disable-mnt --hostname=u-are-gay-if-u-are-seeing-this --apparmor --ignore=shell --protocol=unix,inet --ignore=seccomp.drop   --private-cache --no3d --seccomp --read-only=all --noroot --debug --caps.drop=all --shell=none --ipc-namespace --machine-id  --cpu=2 --apparmor --private --noexec=/tmp --nogroups --nonewprivs --netfilter --noexec=all  --blacklist=all --netfilter --netfilter=/etc/firejail/nolocal.net  --private-opt=all --private-etc=hosts,ssl,ca-certificates,proxychains.conf,proxychains4.conf  --private-bin=elinks,proxychains4,proxychains --private-dev --private-tmp --dns=8.8.8.8 --dns=8.8.4.4   proxychains4 elinks -anonymous www.duckduckgo.com/lite/
#fi

#killall bash
killall sh
killall zsh
#killall tor
killall proxychains
killall proxychains4
