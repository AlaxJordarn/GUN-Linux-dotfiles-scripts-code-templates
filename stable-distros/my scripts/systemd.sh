systemctl stop lvm2-lvmetad.service
systemctl disable lvm2-lvmetad.service
systemctl mask lvm2-lvmetad.service
systemctl stop lvm-monitor.service
systemctl disable lvm-monitor.service
systemctl mask lvm-monitor.service

systemctl stop tlp
systemctl disable tlp 
systemctl mask tlp

 systemctl disable systemd-backlight@backlight:intel_backlight.service
 systemctl disable systemd-backlight@leds:asus::kbd_backlight.service
 systemctl disable NetworkManager.service
 systemctl disable  virtualbox.service
 systemctl disable lm-sensors.service 
 systemctl disable bluetooth.service 
 systemctl disable openvpn.service
 systemctl disable cups.service
 systemctl disable cups-browsed.service
 systemctl disable unattended-upgrades.service
 systemctl disable cron.service
 systemctl disable setvtrgb.service
 systemctl disable avahi-daemon
 systemctl disable avahi-daemon.service
 systemctl disable systemd-backlight@backlight:intel_backlight.service
 systemctl disable systemd-backlight@leds:asus::kbd_backlight.service
 systemctl disable ssh
 systemctl disable NetworkManager.service

 systemctl stop  virtualbox
 systemctl stop  virtualbox.service
 systemctl stop lm-sensors.service 
 systemctl stop lm-sensors
 systemctl stop openvpn
 systemctl stop openvpn.service
 systemctl stop networking 
 systemctl stop apport

 systemctl stop ssh
# systemctl stop systemd-journald
#systemctl stop systemd-journald.service
# systemctl stop systemd-journald-dev-log.socket
# systemctl stop systemd-journald-audit.socket
# systemctl stop systemd-journald.socket
# systemctl stop systemd-journald.service
 systemctl stop netfilter-persistent.service
 systemctl stop bluetooth.service 
 systemctl stop unattended-upgrades.service
 systemctl stop cups.service
 systemctl stop cups-browsed.service
 systemctl stop cron.service
 systemctl stop avahi-daemon.service
 systemctl stop avahi-daemon
 systemctl stop NetworkManager.service
 systemctl stop systemd-backlight@backlight:intel_backlight.service
 systemctl stop systemd-backlight@leds:asus::kbd_backlight.service
systemctl mask systemd-resolved


 systemctl mask  virtualbox
 systemctl mask  virtualbox.service
 systemctl mask lm-sensors.service 
 systemctl mask lm-sensors
 systemctl mask openvpn
 systemctl mask openvpn.service
 systemctl mask networking 
 systemctl mask apport

 systemctl mask ssh
# systemctl stop systemd-journald
#systemctl stop systemd-journald.service
# systemctl stop systemd-journald-dev-log.socket
# systemctl stop systemd-journald-audit.socket
# systemctl stop systemd-journald.socket
# systemctl stop systemd-journald.service
 systemctl mask bluetooth.service 
 systemctl mask unattended-upgrades.service
 systemctl mask cups.service
 systemctl mask cups-browsed.service
 systemctl mask cron.service
 systemctl mask avahi-daemon.service
 systemctl mask avahi-daemon
 
# systemctl mask systemd-backlight@backlight:intel_backlight.service
 systemctl mask systemd-backlight@leds:asus::kbd_backlight.service

#new mask
systemctl mask keyboard-setup.service
systemctl mask networkd-dispatcher.service
systemctl mask procps
systemctl mask apport
systemctl mask networking

##new




 systemctl disable systemd-resolved
 systemctl disable procps
 systemctl disable networking
 systemctl disable apport



 systemctl stop systemd-resolved
 systemctl stop procps



 macchanger -r wlp2s0
 macchanger -r enp3s0f1
 macchanger -r lo 
 macchanger -r eth0

postfix stop

 systemctl disable networkd-dispatcher.service 

 systemctl disable keyboard-setup.service 

 systemctl stop networkd-dispatcher.service 


 systemctl stop keyboard-setup.service


printf "\n\n ***stoped all extra systemctl services*** \n\n"
echo now fockoff


systemctl stop systemd-sysusers.service 
systemctl disable systemd-sysusers.service 

systemctl mask systemd-sysusers.service 


./new
#systemd-update-done.service
#systemd-backlight@backlight\:intel_backlight.service
