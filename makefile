result: example.o add.o sub.o
	gcc -o result $^ 

example.o: src/example.c include/add.h include/sub.h
	gcc -I include -c $< -o $@ 

add.o: src/add.c include/add.h
	gcc -I include -c $< -o $@ 

sub.o: src/sub.c include/sub.h
	gcc -I include -c $< -o $@ 

.PHONY: clean
clean:
	rm -rf result *.o
