#!/bin/bash
################################################################################
##
## Filename:	getinfo.sh
##
## Project:	Debouncer project, a learning project to learn the impact
##		of bouncing on logic within your device.
##
## Purpose:	To capture data from the debugging bus about a buttons bouncing,
##		to output that data to the screen, as well as to append a file
##	with the information collected.
##
## Creator:	Dan Gisselquist, Ph.D.
##		Gisselquist Technology, LLC
##
################################################################################
##
## Copyright (C) 2017, Gisselquist Technology, LLC
##
## This program is free software (firmware): you can redistribute it and/or
## modify it under the terms of the GNU General Public License as published
## by the Free Software Foundation, either version 3 of the License, or (at
## your option) any later version.
##
## This program is distributed in the hope that it will be useful, but WITHOUT
## ANY WARRANTY; without even the implied warranty of MERCHANTIBILITY or
## FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
## for more details.
##
## You should have received a copy of the GNU General Public License along
## with this program.  (It's in the $(ROOT)/doc directory.  Run make with no
## target there if the PDF file isn't present.)  If not, see
## <http://www.gnu.org/licenses/> for a copy.
##
## License:	GPL, v3, as defined and found on www.gnu.org,
##		http://www.gnu.org/licenses/gpl.html
##
##
################################################################################
##
##
wbregs bounces  | tee -a btndata.txt
wbregs duration | tee -a btndata.txt
wbregs scope 0x88000020
