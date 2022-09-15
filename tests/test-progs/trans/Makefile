
target = trans

all:
	arm-linux-gnueabihf-as $(target).s -g -o $(target).o
	arm-linux-gnueabihf-ld $(target).o -o $(target)
	file $(target)  	# 查看有debug信息
	qemu-arm-static -g 8880 $(target)    # 远程debug：8889