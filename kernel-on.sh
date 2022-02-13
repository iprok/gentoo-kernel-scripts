#!/bin/bash
if [ $# -ne 1 ]
then
	echo "First argument should be a kernel option"
	exit 1
fi

sed -i -e "s/^# $1 is not set/$1=y/" /usr/src/linux/.config
