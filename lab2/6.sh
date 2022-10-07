#!/bin/bash

find /proc -maxdepth 2 -name "statm" | awk '
BEGIN {
	max_pid = -1
	max_mem = -1
}
{
	# (1) total program size (same as VmSize in /proc/[pid]/status)
	# https://man7.org/linux/man-pages/man5/proc.5.html
	cmd = "cat " $0 " | cut -d \" \" -f1"
	cmd | getline mem

	if (mem > max_mem) {
		pid = path[split($0,path,"/")-1]
		max_mem = mem
		max_pid = pid
	}
}
END {
	print "PID\tMEM\n" max_pid "\t" max_mem
}'