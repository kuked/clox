TARGET = clox
OBJS = \
	main.o \
	chunk.o \
	memory.o \
	debug.o \
	value.o \
	vm.o \
	compiler.o \
	scanner.o \
	object.o \
	table.o
CFLAGS = -c -g -Wall -std=c99
INCLUDES = \

$(TARGET):$(OBJS)
	$(CC) $(OBJS) -o $@ -lm
clean:
	rm -f *.o
test:
	./clox

main.o: main.c
chunk.o: chunk.c
memory.o: memory.c
debug.o: debug.c
value.o: value.c
vm.o: vm.c
compiler.o: compiler.c
scanner.o: scanner.c
object.o: object.c
table.o: table.c
