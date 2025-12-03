ifndef CROSS_COMPILE
GCC := gcc
else
GCC := aarch64-none-linux-gnu-gcc
endif

all: writer

clean:
	rm -f writer writer.o
writer: writer.c
	$(GCC) writer.c -o writer

.PHONY: all clean
