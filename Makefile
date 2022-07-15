CXX := g++
CXX_FLAGS := -std=c++17 -ggdb -fopenmp

BIN := bin 
SRC := $(wildcard ./Gomoku/*.cc)

INCLUDE := -I.$(wildcard ./Gomoku/*.h)

EXECUTABLE := main

MAIN_SRC := $(SRC)

all: $(BIN)/$(EXECUTABLE)

run: all
	./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(MAIN_SRC)
	$(CXX) $(CXX_FLAGS) $(INCLUDE) $(MAIN_SRC) 

$(BIN)/$(SHAREDLIB): $(SRC)
	$(CXX) $(CXX_FLAGS) $(INCLUDE) $(SRC)
