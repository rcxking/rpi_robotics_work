#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.65])
AC_INIT([netcanft], [1.1.0], [ntd@gatech.edu])
AM_INIT_AUTOMAKE([-Wall])
AC_CONFIG_SRCDIR([include/netcanft.h])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIR([m4])

# Checks for programs.
AC_USE_SYSTEM_EXTENSIONS
AC_PROG_CC
AC_PROG_CC_C99
dnl AC_PROG_LIBTOOL

AC_C_RESTRICT
AC_C_INLINE
AC_C_CONST

# Enable maximum warnings
m4_ifdef([AX_CFLAGS_WARN_ALL],
         [AX_CFLAGS_WARN_ALL])

dnl APPEND_FLAG( [FLAG] )
dnl Check if FLAG is supported, and if so, add it

dnl The AX_CHECK_COMPILER_FLAGS maco was renamed to AX_CHECK_COMPILE_FLAG
dnl Checking for both versions
m4_ifdef([AX_CHECK_COMPILE_FLAG],
         [AC_DEFUN([APPEND_FLAG],
                   [AX_CHECK_COMPILE_FLAG([$1], [CFLAGS="$1 $CFLAGS"])])])

m4_ifdef([AX_CHECK_COMPILER_FLAGS],
         [AC_DEFUN([APPEND_FLAG],
                   [AX_CHECK_COMPILER_FLAGS([$1], [CFLAGS="$1 $CFLAGS"])])])

dnl If we found the flag checking macro, check some flags
m4_ifdef([APPEND_FLAG],
         [APPEND_FLAG([-Wextra])
          APPEND_FLAG([-Wconversion])
          APPEND_FLAG([-Wpointer-arith])
          APPEND_FLAG([-Wfloat-equal])
          APPEND_FLAG([-Wshadow])
          APPEND_FLAG([-Wwrite-strings])
          APPEND_FLAG([-Wc++-compat])])

dnl # Doxygen
dnl m4_ifdef([DX_INIT_DOXYGEN],
dnl          [DX_HTML_FEATURE(ON)
dnl           DX_PDF_FEATURE(OFF)
dnl           DX_PS_FEATURE(OFF)
dnl           DX_INIT_DOXYGEN(ach)],
dnl          [AM_CONDITIONAL([DX_COND_doc],   false)
dnl           AM_CONDITIONAL([DX_COND_html],  false)
dnl           AM_CONDITIONAL([DX_COND_chm],   false)
dnl           AM_CONDITIONAL([DX_COND_chi],   false)
dnl           AM_CONDITIONAL([DX_COND_rtf],   false)
dnl           AM_CONDITIONAL([DX_COND_xml],   false)
dnl           AM_CONDITIONAL([DX_COND_ps],    false)
dnl           AM_CONDITIONAL([DX_COND_pdf],   false)
dnl           AM_CONDITIONAL([DX_COND_latex], false)
dnl           AM_CONDITIONAL([DX_COND_man],   false)
dnl          ])

dnl # Check for programs to make documentation
dnl AC_CHECK_PROGS([HELP2MAN], [help2man])
dnl AC_CHECK_PROGS([MAN2HTML], [man2html])
dnl AC_CHECK_PROGS([DB2HTML], [db2html])
dnl AM_CONDITIONAL([HAVE_HELP2MAN], [test x$HELP2MAN != x])
dnl AM_CONDITIONAL([HAVE_MAN2HTML], [test x$MAN2HTML != x])
dnl AM_CONDITIONAL([HAVE_DB2HTML],  [test x$DB2HTML != x])

dnl # Check if we already have docs (from tarball)
dnl AC_CHECK_FILE( [$srcdir/doc/man/ach.1],           [FOUND_MANPAGES=yes])
dnl AC_CHECK_FILE( [$srcdir/doc/man/ach.html],        [FOUND_MANHTML=yes])
dnl AC_CHECK_FILE( [$srcdir/doc/manual/ach-manual.html], [FOUND_MANUAL=yes])

dnl # If we can make the docs or already have them, then we can install them
dnl AM_CONDITIONAL([HAVE_MANPAGES], [test x$HELP2MAN != x -o x$FOUND_MANPAGES = xyes])
dnl AM_CONDITIONAL([HAVE_MANHTML],  [test '(' x$HELP2MAN != x -a x$MAN2HTML != x ')' -o x$FOUND_MANHTML = xyes])
dnl AM_CONDITIONAL([HAVE_MANUAL],   [test x$DB2HTML != x -o x$FOUND_MANUAL = xyes])

AC_CONFIG_FILES([Makefile])

AC_OUTPUT
