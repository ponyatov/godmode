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

# version
CTNG_VER = 1.26.0

# dir
CWD   = $(CURDIR)
BIN   = $(CWD)/bin
INC   = $(CWD)/inc
SRC   = $(CWD)/src
TMP   = $(CWD)/tmp
REF   = $(CWD)/ref
GZ    = $(HOME)/gz
BUILD = $(CWD)/tmp/$(MODULE)

# tool
CURL = curl -L -o
CF   = clang-format -style=file

# package
CTNG     = crosstool-ng-$(CTNG_VER)
CTNG_GZ  = $(CTNG).tar.xz
CTNG_URL = https://github.com/crosstool-ng/crosstool-ng/releases/download/

.PHONY: install update gz ref
install: gz ref
	$(MAKE) update
update:
	sudo apt update
	sudo apt install -uy `cat apt.txt`
gz: \
	$(CTNG)/README.md
ref:

$(CTNG)/README.md: $(GZ)/$(CTNG_GZ)
	xzcat $< | tar x && touch $@
$(GZ)/$(CTNG_GZ): Makefile
	$(CURL) $@ $(CTNG_URL)/$(CTNG)/$(CTNG_GZ)
