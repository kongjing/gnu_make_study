vpath %.c src
vpath %.h include
CPPFLAGS = -I include

example: example.o add.o sub.o
example.o: add.h sub.h 
add.o: add.h
sub.o: sub.h

depend: add.c sub.c example.c
	$(CC) -MM $(CPPFLAGS) $^ > $@

include depend
 
.PHONY: clean
clean:
	rm -rf example *.o depend
