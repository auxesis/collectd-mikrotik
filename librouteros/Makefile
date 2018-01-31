BUILD_DIR := $(shell mktemp -d)
LIBROUTEROS_BUILD_DIR := $(BUILD_DIR)"/librouteros"
PREFIX := "/opt/collectd"

.ONESHELL:
build:
	cd $(BUILD_DIR)
	git clone https://github.com/octo/librouteros
	cd $(LIBROUTEROS_BUILD_DIR)
	touch README
	autoreconf --verbose --force --install
	aclocal
	automake --add-missing --copy
	autoconf
	./configure --prefix=$(PREFIX)
	make
	make install
