AM_CPPFLAGS = -I$(top_srcdir)/include

include_HEADERS = include/netcanft.h

bin_PROGRAMS = cftd

cftd_SOURCES = src/cftd.c src/ft.c
cftd_LDADD = -lsns -lach -lamino -lsocanmatic -lblas -llapack -lreflex
