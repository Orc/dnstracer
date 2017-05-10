//
// $Id: getopt.h,v 1.1 2002/01/25 00:38:19 mavetju Exp $
//
// Only used in the win32-version of dnstracer.
// Supplied by Mike Black <mblack@csihq.com>
//

/*
 *  Copyright (C) 1994 Arno Schaefer
 *
 *  AU: Prototypen und externe Variablen fuer getopt ()
 *
 *  PO: ANSI C
 */

#ifndef GETOPT_H
#define GETOPT_H

#ifdef __cplusplus
extern "C" {
#endif

extern char *optarg;
extern int optind;
extern int opterr;
extern int optopt;

int getopt (int argc, char *argv[], char *optstring);

#ifdef __cplusplus
}
#endif

#endif
