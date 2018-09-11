#!/bin/sh


killGoogle () {
	# -l  列出程序名和进程ID；
	# -o  进程起始的ID；
	# -n  进程终止的ID；
	# pgrep -l Google
	# pgrep -lo Google
	# pgrep -ln Google

	# 取出pid
	googlePid=`pgrep -lo Google`
	echo $googlePid

	for temp in `pgrep -l Google`
	do
		googlePid=$temp
	  	echo $temp
	  	break
	done

	# 取出pid 占几个字符
	# n=`pgrep -l Google|wc -l` 
	# echo " -- $n"

	# 截取pid
	# googlePid=${googlePid:0:$n}
	# echo $googlePid

	# kill
	sudo kill -9 $googlePid
}

killGoogle




