//
// $Id: dnstracer_broken.h,v 1.2 2002/01/22 01:54:46 mavetju Exp $
//

//
// Just when I thought life was good and everything was sweet, I found
// out that the /usr/include/arpa/nameserv.h on my FreeBSD box was a
// little bit different than that file on a Debian box.
//
// Let's assume that this is enough to convince everybody that these
// variables do exist.
//

#ifndef ns_t_a
#define ns_t_a		1
#endif
#ifndef ns_t_ns
#define ns_t_ns		2
#endif
#ifndef ns_t_cname
#define ns_t_cname	5
#endif
#ifndef ns_t_soa
#define ns_t_soa	6
#endif
#ifndef ns_t_ptr
#define ns_t_ptr	12
#endif
#ifndef ns_t_hinfo
#define ns_t_hinfo	13
#endif
#ifndef ns_t_mx
#define ns_t_mx		15
#endif
#ifndef ns_t_txt
#define ns_t_txt	16
#endif
#ifndef ns_t_aaaa
#define ns_t_aaaa	28
#endif

#ifndef ns_c_in
#define ns_c_in		1
#endif
#ifndef ns_c_chaos
#define ns_c_chaos	3
#endif
#ifndef ns_c_hs
#define ns_c_hs		4
#endif
#ifndef ns_c_none
#define ns_c_none	254
#endif
#ifndef ns_c_any
#define ns_c_any	255
#endif

#ifndef NS_MAXDNAME
#define NS_MAXDNAME	1024
#endif

