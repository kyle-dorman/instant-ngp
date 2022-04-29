


```
python scripts/colmap2nerf.py --video_in data/nerf/rmo_video/rmo.mov --video_fps 2 --run_colmap --aabb_scale 16

python scripts/colmap2nerf.py --images data/nerf/rmo_video/images --video_fps 2 --run_colmap --aabb_scale 16 --colmap_db data/nerf/rmo_video/colmap.db --out data/nerf/rmo_video/transforms.json

python ./scripts/run.py --mode nerf --scene data/nerf/fox --save_snapshot data/nerf/fox/snapshot.msgpack --save_mesh data/nerf/fox/mesh.ply --n_steps 1000
```