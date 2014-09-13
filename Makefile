CXX = clang++
CPP_FILE = main.cpp
TEST_SH = ./test.sh
# With -DDEBUG , dump will remain on the code.
CFLAGS = -O2 -Wall -std=c++11 -Wall -DDEBUG
PROGRAM = ./a.out
TESTCASE = case

all: $(PROGRAM)

$(PROGRAM):$(CPP_FILE)
	$(CXX) $(CFLAGS) $(CPP_FILE) -o $(PROGRAM)

PHONY: check-syntax test watch

check-syntax:
	$(CXX) -fsyntax-only -fno-color-diagnostics $(CFLAGS) $(CHK_SOURCES)

test:$(PROGRAM)
	$(TEST_SH) $(PROGRAM)

watch:
	make test
	while inotifywait -q -r -e modify $(CPP_FILE) $(TESTCASE);true;do clear;make test;done
