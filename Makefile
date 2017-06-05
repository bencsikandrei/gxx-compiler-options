CC=g++

SRC=$(wildcard *.cpp)
OBJ=$(SRC:.c=.o)

CLAGS= -pedantic -Wall -Wextra -Wold-style-cast -Woverloaded-virtual -Wfloat-equal -Wwrite-strings -Wpointer-arith -Wcast-qual -Wcast-align -Wconversion -Wshadow -Weffc++ -Wredundant-decls -Wdouble-promotion -Winit-self -Wswitch-default -Wswitch-enum -Wundef -Wlogical-op -Winline -O2 -s
LDFLAGS=

EXEC=main

all: clean
	$(CC) -o $(EXEC) $(OBJ) $(LDFLAGS)

%.o: %.c
	$(CC) -c $(CFLAGS) $^

clean:
	rm -rf *.o

mrproper: clean
	rm -rf $(EXEC)

.PHONY: all clean mrproper
