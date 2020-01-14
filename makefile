vpath %.c src
vpath %.h include
CPPFLAGS = -I include

example: example.o libadd.a
	cc example.o -L . -ladd -o example
 
# $(AR) $(ARFLAGS) $@ $?  is better than  $(AR) $(ARFLAGS) $@ $^
# this method only replace older pre files
libadd.a: add.o sub.o
	$(AR) $(ARFLAGS) $@ $?
	
example.o: add.h sub.h 
add.o: add.h
sub.o: sub.h


.PHONY: clean
clean:
	rm -rf example *.o libadd.a

