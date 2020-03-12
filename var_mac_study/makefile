#usual writing
#var value with leading space trimmed and trailing spaces are not trimmed

# Some simple constants.
CC	:= gcc
Mkdir	:= mkdir -p

# Internal variables.
sources	= *.c
objects	= $(subst .c,.o,$(sources))

#A function or two.
maybe-make-dir	= $(if $(wildcard $1),,$(MKDIR) $1)
assert-not-null	= $(if $1,,$(error Illegal null value.))

