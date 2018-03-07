#!/bin/bash

. ../env

I=${NUM_NODES}

while [ ${I} -gt 0 ]
do
	NODE=${NODE_NAME}-${I}
	echo "### ${NODE} ###"
	gluster peer probe ${NODE}
	ssh ${NODE} "mkdir -p /mnt/data ; printf \"localhost:/data\t/mnt/data\tglusterfs\tdefaults\t0\t0\n\" >> /etc/fstab" 	
	I=$( expr ${I} - 1 )
done

gluster volume create data disperse 3 transport tcp rpi-{1..${NUM_NODES}}:/data force
gluster volume start data
