#!/bin/bash

output="ppa-avg.list"

cat "ppa.list" | awk '
BEGIN {
	curr_ppid = -1
	curr_count = 0
	curr_sum = 0
}

function checkline() {
	if (curr_ppid != ppa[2]) {
		if (curr_count > 0) {
			res = curr_sum / curr_count
			{ print "Average_Running_Children_of_ParentID=" curr_ppid " is " res }
		}
		curr_ppid = ppa[2]
		curr_count = 1
		curr_sum = ppa[3]
	} else {
		curr_count += 1
		curr_sum += ppa[3]
	}
}

{
	split($0,ppa,":")
	checkline()
	{ print $0 }
}

END {
	# Hack to trigger print
	ppa[2] = -1
	checkline()
}' > $output