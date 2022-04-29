#! /bin/bash

export PATH="/usr/local/cuda-11.4/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda-11.4/lib64:$LD_LIBRARY_PATH"

git submodule init
git submodule update
git submodule update --init
git submodule update --init --recursive

nvidia-smi

cmake . -B build -DNGP_BUILD_WITH_GUI=OFF
cmake --build build --config RelWithDebInfo -j `nproc`

mkdir data/nerf/rmo_video
cp /data/rmo_nerf/rmo_nerf/video/rmo.mov data/nerf/rmo_video/

mkdir data/nerf/rmo_static
cp -r /data/rmo_nerf/rmo_nerf/images data/nerf/rmo_static/
