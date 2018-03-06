#!/bin/bash
#bdereims@gmail.com

. ./env

I=${NUM_NODES}

while [ ${I} -gt 0 ]
do
	ssh ${NODE_NAME}-${I} "apt-get update ; apt-get -y upgrade ; apt-get -y install glusterfs-server"
	I=$( expr ${I} - 1 )
done
