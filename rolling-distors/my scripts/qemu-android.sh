#!/bin/sh

firejail  --noprofile  \
--private=disks/VG/"VirtualBox VMs"   \
 --protocol=unix,inet  --env=LD_LIBRARY_PATH=none  --hosts-file=/etc/hosts \
 --apparmor  --protocol=unix,inet   --private-cache --no3d --seccomp \
 --read-only=all --noroot --debug --caps.drop=all --shell=none --ipc-namespace \
 --cpu=2 --apparmor --noexec=all --noexec=/tmp --nogroups --nonewprivs \
 --netfilter --blacklist=all --netfilter --netfilter=/etc/firejail/nolocal.net  \
 --private-opt=all --private-etc=hosts,ssl,ca-certificates \
 --private-tmp --dns=8.8.8.8 --dns=8.8.4.4 \
qemu-system-x86_64 \
-enable-kvm \
-m 14048 \
-smp 6 \
-cpu host \
-soundhw es1370 \
-device virtio-mouse-pci -device virtio-keyboard-pci \
-serial mon:stdio \
-boot menu=off \
-net nic \
-net user,hostfwd=tcp::5555-:22 \
-device virtio-vga,virgl=on \
-display gtk,gl=on \
VirtualBox\ VMs/Android/android.vdi

