#!/bin/bash

buf=

echo ""

function readline() {
	tput cuu1
	tput cub 1000
	tput el

	read inp

	if [[ $inp == "q" ]]; then
		echo $buf
		exit 0
	fi
	buf+=$inp
	readline
}

readline