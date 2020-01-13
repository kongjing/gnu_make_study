vpath %.c src
vpath %.h include
CPPFLAGS = -I include

example: example.o libyes.a
	cc example.o libyes.a -o example
 
libyes.a: add.o sub.o
	ar rv libyes.a add.o sub.o

example.o: add.h sub.h 
add.o: add.h
sub.o: sub.h


.PHONY: clean
clean:
	rm -rf example *.o libyes.a

