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
exec /bin/bash /code/rawr.sh "$@"
ls -lah

%post  
echo "This section happens once after bootstrap to build the image."  
mkdir -p /code123
echo ${SINGULARITY_ROOTFS}
echo "echo RoooAAAAR" >> /code/rawr.sh
chmod u+x /code/rawr.sh
%files
src/testSingularity.f90
ls -lah