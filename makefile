vpath %.c src
vpath %.h include
CPPFLAGS = -I include

example: example.o -lyes 
	gcc -o $@ -L . $^

-lyes: libyes.a(add.o) libyes.a(sub.o)

example.o: add.h sub.h 
add.o: add.h
sub.o: sub.h

.PHONY: clean
clean:
	rm -rf example *.o libyes.a

