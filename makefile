vpath %.c src
vpath %.h include
CPPFLAGS = -I include

example: example.o libyes.a 
	cc example.o -L . -lyes -o example

libyes.a: libyes.a(add.o) libyes.a(sub.o)

example.o: add.h sub.h 
add.o: add.h
sub.o: sub.h

.PHONY: clean
clean:
	rm -rf example *.o libyes.a

