CPP = g++
CPP_FILE = main.cpp
TEST_SH = ./test.sh
CFLAGS = -O2 -std=c++11 -Wall
PROGRAM = ./prog
TESTCASE = case

all: $(PROGRAM)

$(PROGRAM):$(CPP_FILE)
	$(CPP) $(CFLAGS) $(CPP_FILE) -o $(PROGRAM)

PHONY: check-syntax test watch

check-syntax:
	echo $(CPP) -fsyntax-only $(CFLAGS) $(CHK_SOURCES)
	$(CPP) -fsyntax-only $(CFLAGS) $(CHK_SOURCES)

test:$(PROGRAM)
	$(TEST_SH) $(PROGRAM)


# in the future,add test case support.
watch:
	make test
	while inotifywait -q -r -e modify $(CPP_FILE) $(TESTCASE);true;do clear;make test;done
