################################################################################
##
## Filename:	Makefile
##
## Project:	Debouncer project, a learning project to learn the impact
##		of bouncing on logic within your device.
##
## Purpose:	A master project makefile.  It tries to build all targets
##		within the project, mostly by directing subdirectory makes.
##
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
.PHONY: all
all: sw
	@echo "This project does not have a test-bench simulation.  Make"
	@echo "therefore doesnt produce anything interesting"
	@echo
	@echo "To build this project, include the Verilog files from the rtl,"
	@echo "rtl/hexbus, and bench/rtl directory into your Xilinx design."
	@echo "You'll also need to create a .xdc file and add it to the project."
	@echo "This .xdc file should be created from the master XDC file that"
	@echo "comes with your board, only the UART and button wires should be"
	@echo "renamed to match the toplevel bench/rtl/testbus.v file."
	@echo
	@echo "The software to support this test is found within the sw/"
	@echo "directory.  If youve gotten this far, that software has been"
	@echo "built."

.PHONY: sw
sw:
	make --no-print-directory -C sw
