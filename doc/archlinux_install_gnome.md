# ArchLinux Install Gnome

- 磁盘分区 先用 fdisk -l 查看磁盘
`
fdisk /dev/sda
`

- 格式化磁盘
`
mkfs.ext4 /dev/sda1
`

- 挂载分区
`
mount /dev/sda1 /mnt
vim /etc/pacman.d/mirrorlist
Server = http://mirrors.hustunique.com/archlinux/$repo/os/$arch
pacstrap -i /mnt base base-devel
genfstab -U -p /mnt >> /mnt/etc/fstab
vim /mnt/etc/locale.gen
arch-chroot /mnt /bin/bash
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc --utc
echo sdhou > /etc/hostname
passwd root
pacman -S grub os-prober dhcpcd openssh
grub-install --recheck /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
systemctl enable sshd
systemctl enable dhcpcd
exit
umount -R /mnt
reboot

useradd -m  -s /bin/bash sdhou
passwd sdhou
vim /etc/sudoers
`

- 查看驱动
`
pacman -Ss xf86
`

- 安装显卡驱动
`
pacman -S extra/xf86-video-vmware
`
- pacman -S xorg xorg-twm  xorg-server  xorg-xclock
useradd -m -d /home/sdhou -s /bin/bash -c "sdhou" -U sdhou
su sdhou
sudo pacman -S wqy-microhei

vim ~/.xinitrc
export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:en_US
export LC_CTYPE=en_US.UTF-8
