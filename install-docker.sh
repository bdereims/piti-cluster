#!/bin/bash
#bdereims@gmail.com

. ./env

I=${NUM_NODES}

while [ ${I} -gt 0 ]
do
	ssh ${NODE_NAME}-${I} "curl -sSL https://get.docker.com | sh"
	I=$( expr ${I} - 1 )
done
