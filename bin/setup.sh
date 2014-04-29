#!/bin/sh

CURDIR=`dirname $0`
CPP_SOURCE=$CURDIR/../template.cpp
PYTHON_SOURCE=$CURDIR/../template.py
TEST_SH=$CURDIR/../test.sh
MAKEFILE=$CURDIR/../Makefile
OJ_PY=$CURDUR/oj.py

cp $CPP_SOURCE `pwd`/main.cpp
cp $TEST_SH `pwd`/test.sh
cp $MAKEFILE `pwd`/Makefile
mkdir case

exit 0
