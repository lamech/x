# This makefile automates my own tasks for creating new blog entries, etc.

piece ?= piece
default:
	@piece=$(piece) ./scripts/mktodaydir

help:
	@echo "Typing 'make' will create a new dir with todays date,"
	@echo "and copy some useful template files in; piece name is used"
	@echo "if given on the command line, e.g. 'piece=someTitle make'"
	@echo "(otherwise, 'piece' is used)."
