#!/bin/bash

output="emails.lst"

grep -EIhor "[[:alnum]][[:alnum:]\._%+-]*@[[:alnum:]]+(\.[[:alpha:]]+)+" "/etc" > $output
tput smso; echo "EMAILS"; tput rmso
cat $output