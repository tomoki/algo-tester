CXX = clang++
CPP_FILE = main.cpp
TEST_SH = ./test.sh
ONE_TEST_SH = ./one_test.sh
# With -DDEBUG , dump will remain on the code.
CFLAGS = -O2 -Wall -std=c++11 -Wall -DDEBUG
PROGRAM = ./a.out
TESTCASE = case

all: $(PROGRAM)

$(PROGRAM):$(CPP_FILE)
	$(CXX) $(CFLAGS) $(CPP_FILE) -o $(PROGRAM)

PHONY: check-syntax test watch one-watch one-test

check-syntax:
	$(CXX) -fsyntax-only -fno-color-diagnostics $(CFLAGS) $(CHK_SOURCES)

test:$(PROGRAM)
	$(TEST_SH) $(PROGRAM)

watch:
	make test
	while inotifywait -q -r -e modify $(CPP_FILE) $(TESTCASE);true;do clear;make test;done

CASE=""
one-test:$(PROGRAM)
ifeq ($(CASE),"")
	echo "usage: 'make one-test CASE=3"
	exit 1
else
	$(ONE_TEST_SH) $(PROGRAM) $(CASE)
endif

one-watch:
	make one-test CASE=$(CASE)
	while inotifywait -q -r -e modify $(CPP_FILE) $(TESTCASE)/$(CASE).in $(TESTCASE)/$(CASE).out; true;do clear;make one-test CASE=$(CASE);done
