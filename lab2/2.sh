#!/bin/bash

output="sbin.list"

ps ax | awk '{if ($5 ~ /^\/sbin\//) { print $1 }}' > $output