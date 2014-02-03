VERSION := 0.0.20110929
PROJECT := netcanft

BINFILES := netcanftd
SHAREDLIBS :=

default: all

include /usr/share/make-common/common.1.mk

CFLAGS += --std=gnu99 -O2

all: $(LIBFILES) $(BINFILES)

$(call LINKBIN, netcanftd, ft.o ftd.o, somatic ntcan ntcanopen amino filter)

clean:
	rm -f $(BUILDDIR)/*.o $(BINFILES) $(LIBFILES)
	rm -rf .deps debian doc $(PROJECT)-$(VERSION)

doc:
	doxygen
