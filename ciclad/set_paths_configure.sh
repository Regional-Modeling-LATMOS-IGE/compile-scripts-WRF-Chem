#!/bin/sh

# simpile configure script to run interactively on ciclad

# To use: 
# source this_script.sh
# Select ifort+icc(dmpar), and basic nesting

# Then to compile WRF: 
# nohup ./compile em_real 2>&1 > compile.log &

# Load the modules needed for WRF compilation
module purge
module load openmpi/1.6.5-ifort
module load hdf5/1.8.14-ifort
module load netcdf4/4.3.3.1-ifort
NETCDF_ROOT='/opt/netcdf43/ifort'
OPENMPI_ROOT='/usr/lib64/openmpi/1.6.5-ifort'
HDF5_ROOT='/opt/hdf5/1.8.14'

# Set the environment variables needed for WRF compilation
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$NETCDF_ROOT/lib"
export NETCDF="$NETCDF_ROOT"
export NETCDF_LIB="$NETCDF_ROOT/lib"
export NETCDF_INC="$NETCDF_ROOT/include"
export CFLAGS="-I$OPENMPI_ROOT/include -m64"
export LDFLAGS="-L$OPENMPI_ROOT/lib -lmpi"
export PHDF5="$HDF5_ROOT"
export JASPERLIB="/usr/lib64"
export JASPERINC="/usr/include/jasper"
export YACC="/home/onishi/tools/bin/yacc -d"
export FLEX_LIB_DIR="/home/onishi/tools/lib"

# Set the WRF switches for WRF-Chem compilation
export WRF_EM_CORE=1
export WRF_NMM_CORE=0
export WRF_CHEM=1
export WRF_KPP=1
export WRFIO_NCD_LARGE_FILE_SUPPORT=1

# Run WRF configure
./configure << EOF
15

EOF

