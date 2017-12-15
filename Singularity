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
cd /code/testSingularity
bin/testSingularity

%post
mkdir -p /code
cd /code
apt update
apt install vim build-essential libnetcdff-dev git gfortran make netcdf-bin -y -f -m
git clone https://github.com/eduardwisernig/testSingularity.git
cd testSingularity
mkdir bin
make
cd ..
chmod -R 777 testSingularity