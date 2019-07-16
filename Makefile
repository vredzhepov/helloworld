CC := gcc
CFLAGS := -v -std=c99 -Wall -Werror
TARGET := helloworld

all: helloworld.c
	$(CC) $(CFLAGS) helloworld.c -o $(TARGET)

.PHONY: clean install

clean:
	rm -f $(TARGET)

install:
	install -m 755 $(TARGET) /usr/local/bin

