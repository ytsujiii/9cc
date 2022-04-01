SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)
CFLAGS=-std=c11 -g -static

9cc: $(OBJS)
	$(CC) -g -fsanitize=undefined -o 9cc $(OBJS)

test: 9cc
	./test.sh

clean:
	rm -f 9cc *.o *~ tmp*

format: $(SRCS)
	clang-format -i $(SRCS)

.PHONY: test clean
