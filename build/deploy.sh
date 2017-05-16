#!/bin/sh
set -ex

# Variables
#
# Variables of the script.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
ROOT_DIR="$(dirname $DIR)"
BUILD_DIR="${ROOT_DIR}/build"

# Rasterizing
#
# Rasterizes the scalable vector graphics.
cd "${ROOT_DIR}/versions"
for dirname in *
do
  test -d "$dirname" || continue

  make -C "${BUILD_DIR}" ${dirname}
  make -C "${BUILD_DIR}" TAG=${dirname} release
done