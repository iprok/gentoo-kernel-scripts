#!/bin/bash
if [ ! -f .config ]
then
	echo "creating current config..."
	modprobe configs                                                                                               
	zcat /proc/config.gz > .config
fi
genkernel all
