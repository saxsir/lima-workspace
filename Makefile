# aarch64 or x86_64
ARCH:="aarch64"

TARGET:=
ifeq ($(ARCH),"aarch64")
	TARGET:=docker
else
	TARGET:=docker_x86_64
endif

start:
	limactl start $(TARGET)

stop:
	limactl stop $(TARGET)

build:
	limactl start $(TARGET).yaml

clean: stop
	limactl delete $(TARGET)

list:
	limactl list
