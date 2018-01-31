PROJECT_NAME := "collectd-mikrotik"
PREFIX := "/opt/collectd"
ARTIFACT_PATH := "/packages/collectd-mikrotik_1.0_amd64.deb"

all: build

build:
	cd librouteros && make
	cd collectd && make

package:
	fpm -n collectd-mikrotik -s dir -t deb --package $(ARTIFACT_PATH) $(PREFIX)

cibuild:
	docker build -t $(PROJECT_NAME) .

cipackage:
	rm -rf packages
	docker run -v `pwd`/packages:/packages -ti $(PROJECT_NAME) /usr/bin/make package
