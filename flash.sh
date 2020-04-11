#!/bin/bash

original=$1
if [ -z $original ] ; then
	echo sh flash.sh original
	exit 1
fi

make hhkb:$original
dfu-programmer atmega32u4 erase
dfu-programmer atmega32u4 flash hhkb_$original.hex
dfu-programmer atmega32u4 reset
