#! /bin/sh

#  WORDS_BIGENDIAN ?


ac_help='--disable-ipv6	No IPv6 queries'

LOCAL_AC_OPTIONS='
set=`locals $*`;
if [ "$set" ]; then
    eval $set
    shift 1
else
    ac_error=T;
fi'

locals() {
    K=`echo $1 | $AC_UPPERCASE`
    case "$K" in
    --DISABLE-IPV6)
                echo NOIPV6=T
                ;;
    esac
}

. ./configure.inc

AC_INIT dnstracer
unset _MK_LIBRARIAN

test "$NOIPV6" && AC_DEFINE 'NOIPV6' '1'

AC_PROG_CC
AC_CHECK_RESOLVER

# the manpage is in pod format, so we've gotta pod2man it
# to get an installable manpage :-(
if AC_PROG pod2man; then
    AC_SUB 'MANPAGE' 'dnstracer.1'
else
    AC_SUB 'MANPAGE' ''
fi


if AC_CHECK_FUNC getopt; then
    AC_SUB 'GETOPT' ''
else
    AC_SUB 'GETOPT' 'getopt.o'
fi

AC_OUTPUT Makefile
