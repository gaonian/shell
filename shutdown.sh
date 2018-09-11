#!/bin/sh


systemControl () {
	# 休眠
	sudo shutdown -s now
	# 关机
	sudo shutdown -h now
	# 重启
	sudo shutdown -r now
}

