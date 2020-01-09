result: example.o add.o sub.o
	gcc -o result example.o add.o sub.o

example.o: src/example.c include/add.h include/sub.h 
	gcc -I include -c src/example.c -o example.o

add.o: src/add.c include/add.h
	gcc -I include -c src/add.c -o add.o

sub.o: src/sub.c include/sub.h
	gcc -I include -c src/sub.c -o sub.o

.PHONY: clean
clean:
	rm -rf result *.o
