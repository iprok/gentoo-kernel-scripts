#!/bin/bash
if [ $# -ne 1 ]
then
	echo "First argument should be a kernel option"
	exit 1
fi

sed -i -e "s/^$1=.\+/# $1 is not set/" /usr/src/linux/.config
