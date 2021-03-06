#!/bin/sh

#
# Variables
#
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
DIR_TESTS="$(dirname $(dirname $DIR))"

DIR_LIBRARY="${DIR_TESTS}/lib"
DIR_RESOURCES="${DIR_TESTS}/resources"
DIR_TARGET="${DIR_TESTS}/target"

#
# Tests
#
. $DIR_LIBRARY/testbase.sh
. $DIR_LIBRARY/functions.sh

# 
# Test Runner
#
(
    rm -rf $DIR_TARGET
    mkdir -p $DIR_TARGET

    (
      RESULT=$(is_empty_apk)
      assertEquals "the cache is empty" 0 $?
    )

    (
      RESULT=$(install_apk)
      assertEquals "install to image" 0 $?
    )
)