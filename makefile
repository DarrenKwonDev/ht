C=clang
C_WARNINGS = -Wall -Wfatal-errors -Wshadow -Wnon-virtual-dtor -Wcast-align
SRC = $(wildcard ./src/*.c)
EXECUTABLE_NAME = main

build:
	$(C) -std=c17 $(C_WARNINGS) $(SRC) -o $(EXECUTABLE_NAME) 

clean:
	rm $(EXECUTABLE_NAME)

compile_commands.json:
	bear -- make build

.PHONY: build clean