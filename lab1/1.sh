#!/bin/bash

if [[ $# != 3 ]]; then
	echo "Invalid amount of arguments (3 expected)"
	exit 1
fi

max=$1
if [[ $max -lt $2 ]]; then
	max=$2
fi
if [[ $max -lt $3 ]]; then
	max=$3
fi

echo $max