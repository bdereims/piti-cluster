#!/bin/bash
#bdereims@gmail.com

source ./env

if [ $(id -u) -ne "0" ]; then
	echo "You must be root."
	exit 1
fi

function remotely {
    sshpass -e ssh -o StrictHostKeyChecking=no root@${1} ${2}
}

function remotely_cp {
    sshpass -e scp -o StrictHostKeyChecking=no ${2} root@${1}:${3}
}

function each_dhcp_lease {
  NODE_NUM=2
  #for NODE in $(cat /var/lib/misc/dnsmasq.leases | sed "/${NODE_NAME}/d" | sed "/rpi/d" | cut -d' ' -f3);
  for NODE in $(cat /var/lib/misc/dnsmasq.leases | cut -d' ' -f3);
  do
    sshpass -e ssh -o StrictHostKeyChecking=no pi@${NODE} mkdir -p /home/pi/.ssh
    sshpass -e scp /root/.ssh/id_rsa.pub pi@${NODE}:/home/pi/.ssh/authorized_keys
    sshpass -e ssh -o StrictHostKeyChecking=no pi@${NODE} sudo mkdir -p /root/.ssh
    sshpass -e ssh -o StrictHostKeyChecking=no pi@${NODE} sudo cp /home/pi/.ssh/authorized_keys /root/.ssh/.

    #remotely ${NODE} "apt-get update ; apt-get -y upgrade ; rpi-update"
    remotely ${NODE} "apt-get update ; apt-get -y upgrade"

    remotely ${NODE} "echo ${NODE_NAME}-${NODE_NUM} > /etc/hostname" 
    remotely ${NODE} "sed -e '/^127\.0\.1\.1.*/d' -i /etc/hosts"
    #remotely ${NODE} "printf \"127.0.1.1\t${NODE_NAME}-${NODE_NUM}\n\" >> /etc/hosts"
    
    remotely ${NODE} "sed -e 's/rootfstype=ext4 elevator=deadline/rootfstype=ext4 cgroup_enable=cpuset cgroup_enable=memory cgroup_memory=1 elevator=deadline/' -i /boot/cmdline.txt"
    remotely_cp ${NODE} ./files/config.txt /boot/.

    remotely_cp ${NODE} ./files/sysctl.conf /etc/.

    remotely ${NODE} "reboot"
    NODE_NUM=$(expr ${NODE_NUM} + 1)
  done 
}

function main {
  each_dhcp_lease
}

main

# vim: ai ts=2 sw=2 et sts=2 ft=sh
# vim: autoindent tabstop=2 shiftwidth=2 expandtab softtabstop=2 filetype=sh
