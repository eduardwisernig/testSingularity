Bootstrap:docker  
From:ubuntu:latest  

%labels
MAINTAINER Vanessasaur
SPECIES Dinosaur

%environment
RAWR_BASE=/
export RAWR_BASE

%runscript
echo "This gets run when you run the image!" 
exec /bin/bash /rawr.sh "$@"

%post  
echo "This section happens once after bootstrap to build the image."  
mkdir -p /CLASSIC
echo ${SINGULARITY_ROOTFS}
echo "echo RoooAAAAR" >> /rawr.sh
chmod u+x /rawr.sh
%files
test.f90 /CLASSIC
