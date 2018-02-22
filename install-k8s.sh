#!/bin/bash
#bdereims@gmail.com

. ./env

I=${NUM_NODES}

while [ ${I} -gt 0 ]
do
	NODE=${NODE_NAME}-${I}
	echo "### ${NODE} ###"
	SCRIPT=install-k8s.sh
	scp files/${SCRIPT} ${NODE}:.
	ssh ${NODE} "bash ./${SCRIPT} ; rm -fr ${SCRIPT}"
	I=$( expr ${I} - 1 )
done
