vpath %.c src
vpath %.h include
CPPFLAGS = -I include

SOURCES = add.c     \
	  sub.c     \
	  example.c \
 
example: example.o add.o sub.o
example.o: add.h sub.h 
add.o: add.h
sub.o: sub.h

include $(subst .c,.d,$(SOURCES)) 
 
%.d: %.c
	$(CC) -MM $(CPPFLAGS) $< > $@.$$$$;                 \
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.$$$$ > $@;
	rm -f $@.$$$$ 

.PHONY: clean
clean:
	rm -rf example *.o *.d* 
