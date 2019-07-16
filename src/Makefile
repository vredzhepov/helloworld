CC      := gcc
CFLAGS  := -std=c99 -Wall -Werror -Wextra

SRCS    := main.c
OBJS    := $(patsubst %.c, %.o, $(SRCS))
TARGET  := helloworld

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

.PHONY: all clean

all: $(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
