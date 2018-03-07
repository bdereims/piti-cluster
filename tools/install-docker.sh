#!/bin/bash
#bdereims@gmail.com

. ../env

I=${NUM_NODES}

while [ ${I} -gt 0 ]
do
	ssh ${NODE_NAME}-${I} "curl -sSL https://get.docker.com | sh"
	ssh ${NODE_NAME}-${I} "usermod -aG docker pi"
	ssh ${NODE_NAME}-${I} "systemctl enable docker"
	I=$( expr ${I} - 1 )
done
