#!/bin/bash

input="/var/log/anaconda/syslog"
output="info.log"

grep -E "^[^ ]*[ ](INFO)" $input > $output