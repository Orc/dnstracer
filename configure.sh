#! /bin/sh



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

if AC_CHECK_FUNC getopt; then
    AC_SUB 'GETOPT' ''
else
    AC_SUB 'GETOPT' 'getopt.o'
fi

#  WORDS_BIGENDIAN ?

LOGN "Checking byte order "
cat > ngc$$.c << EOF
main()
{
    int test_var = 1;
    char *msb = (unsigned char*)&test_var;

    
    return msb[0] == 0;
}
EOF

if $AC_CC -o ngc$$ ngc$$.c; then
    ./ngc$$
    status=$?
else
    status=':-('
fi
rm -f ngc$$ ngc$$.c

case "$status" in
0) LOG "(little endian)"; AC_DEFINE 'WORDS_LITTLEENDIAN' '1' ;;
1) LOG "(big endian)"; AC_DEFINE 'WORDS_BIGENDIAN' '1' ;;
*) AC_FAIL "can't figure out the endianosity of this machine?" ;;
esac


AC_OUTPUT Makefile
