CC := gcc
CFLAGS := -Wall -Werror
TARGET := helloworld

$(TARGET): helloworld.c
	$(CC) $(CFLAGS) helloworld.c -o $(TARGET)

.PHONY: all clean

all: $(TARGET)

clean:
	rm -f $(TARGET)
