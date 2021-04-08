DEFCONFIG := zed_docker_defconfig


all: .prep
	make -C buildroot/

.prep:
	make -C buildroot/ $(DEFCONFIG) BR2_EXTERNAL=$(CURDIR)
	echo $(DEFCONFIG) > .prep

clean:
	make -C buildroot/ clean
	rm .prep

%:
	make -C buildroot/ $@

.PHONY: all clean
