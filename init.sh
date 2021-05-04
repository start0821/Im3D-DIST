#! /bin/bash
ROOT_PATH=$1
echo shared dataset and log directory is in $ROOT_PATH 

echo link the data, log directory in Im3D
cd Implicit3DUnderstanding
if [ -f data ]; then
	echo data directory already exists
else
	ln -s $ROOT_PATH/data/Im3D data
fi
if [ -f out ]; then
	echo out directory already exists
else
	ln -s $ROOT_PATH/log/Im3D out
fi

echo link data directory in DIST
cd ../DIST-Renderer
if [ -f data ]; then
	echo data directory already exists
else
	ln -s $ROOT_PATH/data/DIST data
fi
