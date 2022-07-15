CXX := g++
CXX_FLAGS := -std=c++17 -ggdb -fopenmp

BIN := bin 
SRC := $(wildcard Gomoku/*.cpp)

INCLUDE := -I./

LIBRARIES :=
EXECUTABLE := bin/main

all: compile 

run: all
	clear
	./$(EXECUTABLE)

compile: $(SRC)
	$(CXX) $(CXX_FLAGS) $(INCLUDE) $(SRC) -o $(EXECUTABLE)
