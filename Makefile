CC=g++
CCFLAGS=-Wall -std=c++1z -O3 -g
SOURCES=$(wildcard *.cpp)
OBJECTS=$(SOURCES:.cpp=.o)
TARGET=main

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.c %.h
	$(CC) $(CCFLAGS) -c $<

%.o: %.c
	$(CC) $(CCFLAGS) -c $<

run: all
	./$(TARGET)

write:
	vi $(SOURCES)

debug: all
	gdb $(TARGET)

memory: all
	valgrind --leak-check=yes --show-reachable=yes ./$(TARGET)
clean:
	rm -f *.o $(TARGET)