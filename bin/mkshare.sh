#!/bin/sh

if [ ! -d $HOME/share ]
then
	mkdir -m 755 $HOME/share
fi

cd $HOME/share
for group in `groups`
do

	if [ ! -d $HOME/share/$group ]
	then
		mkdir -m 750 $HOME/share/$group
		chgrp $group $HOME/share/$group
	fi
done

if [ ! -d $HOME/share/other ]
then
	mkdir -m 755 $HOME/share/other
fi
