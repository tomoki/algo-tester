#!/bin/sh

if [ $# -ne 1 ]; then
    echo "usage: copy.sh distdir"
    exit 1
fi
PWD=$1
if [ ! -d $PWD ]; then
    mkdir $PWD
fi
TEMPLATEDIR=`dirname $0`

P1=`realpath $TEMPLATEDIR`
P2=`realpath $PWD`
if [ $P1 = $P2 ] ; then
    echo "DO NOT exec copy.sh in template directory"
    exit 1
fi

CPP_SOURCE=$TEMPLATEDIR/template.cpp
TEST_SH=$TEMPLATEDIR/test.sh
ONE_TEST_SH=$TEMPLATEDIR/one_test.sh
MAKEFILE=$TEMPLATEDIR/Makefile

cp $CPP_SOURCE $PWD/main.cpp
cp $TEST_SH $PWD/test.sh
cp $ONE_TEST_SH $PWD/one_test.sh
cp $MAKEFILE $PWD/Makefile
mkdir $PWD/case

exit 0
