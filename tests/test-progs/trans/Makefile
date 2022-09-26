
target = trans

all: compile link objdump

compile: 
	arm-linux-gnueabihf-as hello_arm.s -g -o hello_arm.o
	arm-linux-gnueabihf-as trans.s -g -o trans.o

link:
	arm-linux-gnueabihf-ld hello_arm.o trans.o -T trans.ld  

objdump:
	arm-linux-gnueabihf-objdump -d a.out > out