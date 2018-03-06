#!/bin/bash
#bdereims@gmail.com

source ./env

if [ $(id -u) -ne "0" ]; then
	echo "You must be root."
	exit 1
fi

function update_raspbian {
  apt-get update ; apt-get -y upgrade
  apt-get -y install dnsmasq hostapd sshpass
  rpi-update
}

function update_hostname {
  echo ${NODE_NAME_GW} > /etc/hostname
  sed -e "/^127\.0\.1\.1.*/d" -i /etc/hosts
  printf "127.0.1.1\t${NODE_NAME_GW}\n" >> /etc/hosts
}

function bkp {
  cp ${1} ${1}-bkp-$$
}

function update_system {
  cat ./files/dnsmasq.conf | sed -e "s/###DOMAIN###/${DOMAIN}/g" -e "s/###SUBNET###/${SUBNET}/g" > /etc/dnsmasq.conf
  bkp /etc/sysctl.conf
  cp ./files/sysctl.conf /etc/.
  cp ./files/rc.local /etc/.
  bkp /boot/config.txt
  cp ./files/config.txt /boot/.
  bkp /boot/cmdline.txt
  sed -e "s/rootfstype=ext4 elevator=deadline/rootfstype=ext4 cgroup_enable=cpuset cgroup_memory=1 elevator=deadline/" -i /boot/cmdline.txt
  cat ./files/dhcpcd.conf | sed -e "s/###SUBNET###/${SUBNET}/" > /etc/dhcpcd.conf
}

function update_ssh {
  ssh-keygen -t rsa -b 2048 -f /root/.ssh/id_rsa -q -P "" 
}

function main {
	#update_raspbian
  #update_hostname
  update_system
  update_ssh
}

main

# vim: ai ts=2 sw=2 et sts=2 ft=sh
# vim: autoindent tabstop=2 shiftwidth=2 expandtab softtabstop=2 filetype=sh
