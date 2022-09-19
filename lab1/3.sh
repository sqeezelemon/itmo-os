#!/bin/bash

tput smso
echo "CHOOSE AN OPTION"
tput rmso

echo -e "[1] - NANO\n\
[2] - VIM\n\
[3] - LINKS\n\
[4] - EXIT"

read -n1 -s choice

if [[ $choice -eq 1 ]]; then
	nano
elif [[ $choice -eq 2 ]]; then
	vim
elif [[ $choice -eq 3 ]]; then
	links
elif [[ $choice -eq 4 ]]; then
	exit 0
else
	tput setaf 1
	echo "! $choice IS NOT A VALID MENU OPTION !"
	tput seg0
	exit 1
fi