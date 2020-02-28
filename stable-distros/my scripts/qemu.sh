#!/bin/sh


#this script reads a folder and lets the user selects the iso or vdi which tobe runed

#mount
#mkdir -p disks/
#mkdir -p disks/VG

#mount /dev/sdb4 disks/VG
#disks/VG
#rmdir --ignore-fail-on-non-empty disks/VG
#/home/jerome/disks/VG
#rmdir --ignore-fail-on-non-empty disks
#/home/jerome/disks/
# --private=/home/jerome/qemu     \
run=1

while [ $run != 0 ]        # loop to start 
do
x=3
y=$(expr $(ls -a   disks/VG/"VirtualBox VMs"/"VirtualBox VMs"/"iso s" | wc -l )  ) 
echo ""


while [ $x -le $y ]          # loop to print 
do


 
	printf " $(expr $x - 2). "
ls -a  disks/VG/"VirtualBox VMs"/"VirtualBox VMs"/"iso s"| head -$x | tail -1        # printing with numbers
x=$(expr $x + 1) 

echo " "
done


echo ""
echo " type q to quit " 
read z                           # read user to decide what to pick

if [ $z = q ]                   # quit 
then 
run=0
fi
if [ $z != q ]
then 

value="$(echo $(ls disks/VG/"VirtualBox VMs"/"VirtualBox VMs"/"iso s"| head -$z | tail -1))"  # get the main value from the user







##################
#   main part 
##################


firejail  --noprofile  \
--private=disks/VG/"VirtualBox VMs"   \
--protocol=unix,inet  --env=LD_LIBRARY_PATH=none  --hosts-file=/etc/hosts --apparmor    \
--private-cache --seccomp --read-only=all --noroot --debug \
--caps.drop=all --shell=none --ipc-namespace   --apparmor --noexec=all \
 --noexec=/tmp --nogroups --nonewprivs --netfilter --blacklist=all --netfilter \
--netfilter=/etc/firejail/nolocal.net  --private-opt=all \
--private-etc=hosts,ssl,ca-certificates    --private-tmp --dns=8.8.8.8 --dns=8.8.4.4 \
--disable-mnt \
qemu-system-x86_64 \
-soundhw ac97 \
-k en-us \
-vga  std \
-enable-kvm \
-m 15000 \
-usbdevice  tablet \
-smp 6 \
-enable-kvm \
-boot c   \
VirtualBox\ VMs/iso\ s/"$value"


#tails-amd64-3.14.2.img
#heads-0.4-amd64-live.iso
#debian-10.2.0-amd64-netinst.iso

#--private-dev --machine-id


fi
clear
done






#VBoxManage convertdd  file.img file.vdi
