#! /bin/bash

spell jupyter \
    --machine-type "P3 GPU" \
    --apt ffmpeg \
    --apt build-essential \
    --apt git \
    --apt libsm6 \
    --apt libxext6 \
    --apt libopenexr-dev \
    --apt libxi-dev \
    --apt libglfw3-dev \
    --apt libglew-dev \
    --apt libomp-dev \
    --apt libxinerama-dev \
    --apt libxcursor-dev \
    --apt colmap \
    --mount uploads/pikachu_real_apriltag_0:/data/pikachu_real_apriltag_0 \
    --mount uploads/pikachu_real_apriltag_1:/data/pikachu_real_apriltag_1 \
    --mount uploads/pikachu_real_apriltag_2:/data/pikachu_real_apriltag_2 \
    --mount uploads/pikachu_real_apriltag_3:/data/pikachu_real_apriltag_3 \
    --mount uploads/pikachu_real_apriltag_4:/data/pikachu_real_apriltag_4 \
    --mount uploads/pikachu_common:/data/pikachu_common \
    --mount uploads/rmo_nerf:/data/rmo_nerf \
    --pip-req ./requirements.txt \
    --docker-image kdorman86/testrepo:latest \
    --github-url https://github.com/kyle-dorman/instant-ngp.git \
    instant-ngp
