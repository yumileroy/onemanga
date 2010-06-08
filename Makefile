##----------------------------------------------------------------------------
# onemanga - One Manga Downloader (shell script)
# Makefile created by Yumi Nanako on Tue Jun 8 12:30 2010
# Copyright: Undecided yet. Need to ask the original author.
##----------------------------------------------------------------------------

PREFIX=/usr
PROGNAME=onemanga

all:
	@echo "Specify an argument to make, execute: make help for more details"

help:
	@echo "Installing:"
	@echo ""
	@echo "To install onemanga, execute: make install"
	@echo "To install onemanga to a custom directory etc /usr/local/bin, execute: make install PREFIX=/usr/local"
	@echo ""
	@echo "Uninstalling:"
	@echo ""
	@echo "To remove onemanga, execute: make uninstall"
	@echo "To remove onemanga from a custom directory etc /usr/local/bin, execute: make uninstall PREFIX=/usr/local"

install: onemanga
	@echo "Installing onemanga to ${PREFIX}/bin"
	@install -m755 ${PROGNAME} ${PREFIX}/bin

uninstall: onemanga
	@echo "Removing onemanga from ${PREFIX}/bin"
	@rm ${PREFIX}/bin/${PROGNAME}
