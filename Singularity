Bootstrap:docker  
From:ubuntu:latest  

%labels
MAINTAINER Vanessasaur
SPECIES Dinosaur

%environment
RAWR_BASE=/code
export RAWR_BASE

%runscript
echo "This gets run when you run the image!" 

%post
mkdir -p /code
cd /code
apt update
apt install vim gcc g++ git gfortran autoconf libtool make -y -f -m
git clone https://github.com/Unidata/netcdf-fortran.git
mkdir /code/netcdf
mkdir /code/netcdf/include
mkdir /code/netcdf/lib
cd netcdf-fortran
autoreconf --install
autoconf
export FC=gfortran
export CC=gcc
export CPPFLAGS=-I/code/netcdf/include
export FCFLAGS=-I/code/netcdf//include
export LDFLAGS=-L/code/netcdf/lib
export LIBS=-lnetcdf
./configure --prefix=/code/netcdf

cd ..
git clone https://github.com/eduardwisernig/testSingularity.git


%files
test.f90