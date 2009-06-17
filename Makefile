# This makefile automates my own tasks for creating new blog entries, etc.
#
# Typing "make" will create a new dir with today's date, and copy some useful
# template files in; piece name is used if given on the command line, e.g.
#
#     $ piece=MyExcitingTitle make
#
# ...otherwise, defaults to "piece".

piece ?= piece
default:
	piece=$(piece) ./scripts/mktodaydir
