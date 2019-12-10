sudo pacman -U /var/cache/pacman/pkg/packagename
sudo pacman -Sc
sudo pacman -Scc
sudo pacman -S pacman-contrib
paccache -h
sudo nano /etc/systemd/system/paccache.timer
[Unit]Description=Clean-up old pacman pkg[Timer]OnCalendar=monthlyPersistent=true[Install]WantedBy=multi-user.target
sudo systemctl start paccache.timer
sudo systemctl status paccache.timer
sudo nano /usr/share/libalpm/hooks/paccache.hook
[Trigger]Operation = UpgradeOperation = InstallOperation = RemoveType = PackageTarget = *[Action]Description = Cleaning pacman cache with paccache …When = PostTransactionExec = /usr/bin/paccache -r</code> 
sudo pacman -Qtdq
sudo pacman -Rns $(pacman -Qtdq)
sudo du -sh ~/.cache/
rm -rf ~/.cache/*
#sudo pacman -S rmlint
sudo pacman -S ncdu
sudo journalctl --vacuum-size=50M
sudo journalctl --vacuum-time=4weeks
SystemMaxUse=50M
