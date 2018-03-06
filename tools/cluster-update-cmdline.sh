#!/bin/bash
#bdereims@gmail.com

. ./env

I=${NUM_NODES}

sed -e "s/ext4 elevator/ext4 cgroup_enable=cpuset cgroup_memory=1 elevator/" -i /boot/cmdline.txt

while [ ${I} -gt 1 ]
do
	NODE=${NODE_NAME}-${I}
	scp /boot/cmdline.txt ${NODE}:/boot/cmdline.txt 
	I=$( expr ${I} - 1 )
done
