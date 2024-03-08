#!/bin/sh

set -xe

if [ -z "$1" ] ; then
	echo "No bz2 version specified, aborting..."
	exit 1
fi

BZIP2_VER="$1"
BZIP2_BALL="bzip2-${BZIP2_VER}.tar.gz"
BZIP2_URL="https://sourceware.org/pub/bzip2/${BZIP2_BALL}"

[ -f "${BZIP2_BALL}" ] || curl -LO "${BZIP2_URL}"

[ -d "bzip2-${BZIP2_VER}" ] || tar xf "${BZIP2_BALL}"

(
cd "bzip2-${BZIP2_VER}"

rm -f ../cbits/*.[ch] ../cbits/LICENSE
cp LICENSE \
   blocksort.c \
   bzlib.c \
   bzlib.h \
   bzlib_private.h \
   compress.c \
   crctable.c \
   decompress.c \
   huffman.c \
   randtable.c \
   ../cbits/

)

rm -r "bzip2-${BZIP2_VER}"
rm "${BZIP2_BALL}"

