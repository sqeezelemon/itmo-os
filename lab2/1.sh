#!/bin/bash

output="userproc.list"

ps -U user | sed '1d' | wc -l > $output
ps -U user | sed '1d' |\
awk '{ print $1 " : " $4 }' >> $output