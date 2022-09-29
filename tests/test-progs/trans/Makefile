
target = trans

CROSS = arm-linux-gnueabihf

all: clean compile link objdump

compile: 
	$(CROSS)-as hello_arm.s -g -o hello_arm.o
	$(CROSS)-as trans.s -g -o trans.o

link:
	$(CROSS)-ld hello_arm.o trans.o -T trans.ld

objdump:
	$(CROSS)-objdump -d a.out > out

run:
	$(CROSS)-ld hello_arm.o -o hello_arm
	qemu-arm-static hello_arm

clean:
	rm *.o a.out out