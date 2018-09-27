#!/bin/bash

BUILD="build"

mkdir -p $BUILD
cd $BUILD

# -------------------------------------------------------------------------------------------------------------------------------- #

cmake \
   -D CMAKE_BUILD_TYPE=Debug \
   -D CMAKE_Fortran_COMPILER="$(which gfortran)" \
   -D CMAKE_Fortran_FLAGS="-pedantic -Wall" \
   ..

# -------------------------------------------------------------------------------------------------------------------------------- #

make
cd ..
