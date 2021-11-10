# Makefile – makefile for kern_RSA driver
 

obj-m := kern_rsa.o

KERNEL_DIR = /lib/modules/$(shell uname -r)/build
PWD = $(shell pwd)

all:
	$(MAKE) -C $(KERNEL_DIR) SUBDIRS=$(PWD) modules
 
clean:
	rm -rf *.o *.ko *.order *.symvers *.mod.*
    
