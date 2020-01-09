result: example.o add.o sub.o
	gcc -o result example.o add.o sub.o

example.o: example.c add.h sub.h
	gcc -I . -c example.c -o example.o

add.o: add.c add.h
	gcc -I . -c add.c -o add.o

sub.o: sub.c sub.h
	gcc -I . -c sub.c -o sub.o

.PHONY: clean
clean:
	rm -rf result *.o
