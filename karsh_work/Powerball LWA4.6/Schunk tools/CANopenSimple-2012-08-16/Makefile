
CPPC=g++-4

## if your headers for the PEAK library (Pcan_usb.h) are in an unusal place then state the directory here:
export EXTRAINCDIRS += -I /home/osswald/SCHUNK/vendor/pcan_usb/PCAN-Light/Api

## if your library for the PEAK library (libpcan.so/Pcan_usb.lib) is in an unusal place then state the directory/ies here:
export EXTRALDFLAGS += -L/home/osswald/SCHUNK/vendor/pcan_usb/PCAN-Light/Lib/Visual\ C++

## the name of the PEAK library (without suffix)
export EXTRALIBS    += -lPcan_usb


CFLAGS += -ggdb -D OSNAME_CYGWIN -I inc/ ${EXTRAINCDIRS} -Wall


.PHONY: all
all: bin/test1 bin/test2 bin/test3 bin/test4 bin/test5 bin/test6 bin/move_ipp

.PHONY: clean
clean:
	rm -rf bin/* obj/*.o

MYLIB = obj/canbase.o obj/sdo.o obj/pdo.o

${MYLIB}: ${wildcard inc/*.h}

bin/move_ipp: obj/move_ipp.o ${MYLIB}
	${CPPC} ${CFLAGS} $^ -o $@ ${EXTRALDFLAGS} ${EXTRALIBS}

bin/test1: src/test1.cpp
	${CPPC} ${CFLAGS} $< -o $@

bin/test%: obj/test%.o  ${MYLIB} 
	${CPPC} ${CFLAGS} $^ -o $@ ${EXTRALDFLAGS} ${EXTRALIBS}

#bin/test3: obj/test3.o  ${MYLIB} 
#	${CPPC} ${CFLAGS} $^ -o $@ ${EXTRALDFLAGS} ${EXTRALIBS}

#bin/test4: obj/test4.o  ${MYLIB} 
#	${CPPC} ${CFLAGS} $^ -o $@ ${EXTRALDFLAGS} ${EXTRALIBS}

obj/%.o: src/%.cpp
	${CPPC} -c ${CFLAGS} $< -o $@
	
.PHONY: dist	
dist:
	distdir=CANopenSimple-`date "+%Y-%m-%d"` ;\
	mkdir $$distdir ;\
	cp -a --parents Makefile *.asc src/* inc/* bin/* $$distdir/ ;\
	rm $$distdir/src/test* $$distdir/bin/test* ;\
	zip -r $$distdir.zip $$distdir/ ;\
	rm -rf $$distdir/ ;\
	@echo "generated zip archive $$distdir"
		 