rem
rem $Id: MSVC.BAT,v 1.1 2002/01/25 00:38:18 mavetju Exp $
rem
rem mini-Makefile for dnstracer with Microsoft Visual C++
rem Supplied by Mike Black <mblack@csihq.com>
rem

cl /DWIN32 dnstracer.c getopt.c wsock32.lib
