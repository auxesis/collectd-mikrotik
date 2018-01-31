PROJECT_NAME := "collectd-mikrotik-for-debian"

all: build

build:
	cd librouteros && make
	cd collectd && make

devbuild:
	docker build -t $(PROJECT_NAME) .

