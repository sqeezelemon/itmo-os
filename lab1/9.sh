#!/bin/bash

files=$(find "/var/log" -iname "*.log")
cat $files | wc -l