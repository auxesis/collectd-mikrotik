BUILD_DIR := $(shell mktemp -d)
VERSION := "5.8.0"
FILENAME := "collectd-"$(VERSION)".tar.bz2"
COLLECTD_BUILD_DIR := $(BUILD_DIR)"/collectd-"$(VERSION)
PREFIX := "/opt/collectd"

.ONESHELL:
build:
	cd $(BUILD_DIR)
	wget https://storage.googleapis.com/collectd-tarballs/$(FILENAME)
	tar xvjpf $(FILENAME)
	cd $(COLLECTD_BUILD_DIR)
	./configure --prefix=$(PREFIX) --enable-librouteros --with-librouteros=$(PREFIX) --enable-all-plugins=no --disable-perl --enable-routeros --enable-network
	make
	make install
