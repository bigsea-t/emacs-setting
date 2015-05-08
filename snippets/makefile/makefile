# -*- mode: snippet; require-final-newline: nil -*-
# name: makefile
# key: makefile
# binding: direct-keybinding
# --
PROGRAM = a.out
CC = gcc
CFLAGS = -Wall
OBJS = $(0)

.SUFFIXES: .c .o

$(PROGRAM): $(OBJS)
	$(CC) $(CFLAGS) -o $(PROGRAM) $^

.c.o:
	$(CC) $(CFLAGS) -c $<

.PHONY: clean
clean:
	$(RM) $(PROGRAM) $(OBJS)
