systemctl enable fwupd.service
systemctl enable packagekit.service
systemctl enable ModemManager.service 
systemctl enable console-setup.service 
systemctl enable bolt.service 
systemctl enable systemd-timesyncd.service
systemctl enable postfix@.service
systemctl enable postfix@.service

systemctl restart fwupd.service 
systemctl restart packagekit.service
systemctl restart ModemManager.service 
systemctl restart console-setup.service 
systemctl restart bolt.service 
systemctl restart systemd-timesyncd.service 
systemctl restart postfix@.service

systemctl enable setvtrgb.service
systemctl restart    setvtrgb.service

systemctl enable kmod
systemctl restart kmod
