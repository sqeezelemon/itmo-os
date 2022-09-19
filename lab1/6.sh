#!/bin/bash

input="/var/log/anaconda/X.log"
output="full.log"

grep -E "^.*\(WW\)" $input | \
sed "s/^.*(WW)/Warning:/g" > $output

grep -E "^.*\(II\)" $input | \
sed "s/^.*(II)/Information:/g" >> $output

cat $output