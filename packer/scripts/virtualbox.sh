echo "Installing the virtualbox guest additions"
cd /tmp
mount -o loop /root/VBoxGuestAdditions.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf /root/VBoxGuestAdditions.iso
