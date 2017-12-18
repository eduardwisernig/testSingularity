# ============================================================================
# Name        : Makefile
# Author      : Eduard Wisernig
# Version     :
# Copyright   : 
# Description : Makefile for Hello World in Fortran
# ============================================================================

.PHONY: all clean

# Change this line if you are using a different Fortran compiler
FORTRAN_COMPILER = gfortran

all: src/testSingularity.f90
	$(FORTRAN_COMPILER) -O2 -g -I/usr/include \
		-o bin/testSingularity \
		src/testSingularity.f90 -lnetcdff

clean:
	rm -f bin/testSingularity *.mod
