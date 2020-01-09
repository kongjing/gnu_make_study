vpath %.c src
vpath %.h include

result: example.o add.o sub.o
	gcc -o result $^ 

example.o: example.c add.h sub.h 
	gcc -I include -c $< -o $@

add.o: add.c add.h
	gcc -I include -c $< -o $@ 

sub.o: sub.c sub.h
	gcc -I include -c $< -o $@ 

.PHONY: clean
clean:
	rm -rf result *.o
