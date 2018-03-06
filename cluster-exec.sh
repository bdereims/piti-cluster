#!/bin/bash
#bdereims@gmail.com

. ./env

I=${NUM_NODES}

while [ ${I} -gt 0 ]
do
	NODE=${NODE_NAME}-${I}
	echo "### ${NODE} ###"
	ssh ${NODE} "${1}" &
	I=$( expr ${I} - 1 )
done
