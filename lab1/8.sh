#!/bin/bash

cat "/etc/passwd" | \
sed "s/:.*//g" | \
sort