#!/bin/bash


OScheck=$( uname -o |grep "Linux" )
echo $OScheck
if [[ $OScheck != "GNU/Linux" ]]; then
	exit
fi

#Move files

cp .config ~/ &
cp .bin ~/ &
cp .xinitrc ~/ &
cp .xprofile ~/ &

