# cross
APP ?= gamebox
HW  ?= qemu386

include  all/all.mk
include   hw/$(HW).mk
include  cpu/$(CPU).mk
include arch/$(ARCH).mk
include  app/$(APP).mk

# var
MODULE  = $(notdir $(CURDIR)/..)

.PHONY: install update gz ref
install: gz ref
	$(MAKE) update
update:
	sudo apt update
	sudo apt install -uy `cat apt.txt`
gz:
ref:
