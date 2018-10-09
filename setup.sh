#!/bin/bash

apt-get install quilt parted realpath qemu-user-static debootstrap zerofree pxz zip \
dosfstools bsdtar libcap2-bin grep rsync xz-utils file git curl apache2

systemctl enable apache2
systemctl start apache2

mkdir -p work

if [ ! -h /var/www/html/pi ]; then
	rm -f /var/www/html/pi
	ln -s $(pwd)/work /var/www/html/pi
fi

