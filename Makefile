TARGET = clox
OBJS = \
  main.o
CFLAGS = -c -g -Wall -Wswitch-enum -ansi -pedantic -DDEBUG
INCLUDES = \

$(TARGET):$(OBJS)
	$(CC) $(OBJS) -o $@ -lm
clean:
	rm -f *.o

main.o: main.c
