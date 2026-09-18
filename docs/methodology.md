# Methodology

## 1. Reachability map

The robot workspace is discretized into voxels. A sphere is associated with each voxel and candidate end-effector frames are sampled on the sphere surface. Inverse kinematics is then used to test which sampled frames admit valid joint solutions.

For a sphere with `N` sampled frames and `R` reachable frames, the thesis used the reachability measure:

`D = (R / N) * 100`

The visualization uses a red-to-blue scale, with blue representing higher reachability.

## 2. Inverse reachability map

Each reachable end-effector pose is represented by a transform from the robot origin. The inverse transform is stored to construct an inverse reachability map (IRM). The IRM changes the query perspective: instead of asking *where can the end effector go from this base?*, it supports asking *where can the base be placed to realize this task pose?*

## 3. Base placement

For a user-defined task pose, the IRM transforms are combined with the task transform to generate candidate base poses. Reuleaux clusters these candidates spatially and scores regions according to the density/suitability of feasible base placements.

## 4. Redundancy

The Bots2Rec manipulator has seven revolute joints while the studied end-effector task is six-dimensional. The IKFast solver therefore uses one free parameter to represent the redundant degree of freedom. Several free-index choices were generated and compared.

The controlled geometry comparison used `freeindex=4` as the primary setting, while the result analysis also examined composite maps across feasible free-index configurations.

## 5. Geometry variants

The first rotational axis was evaluated at four vertical offsets:

- `0.0 m` (baseline)
- `-0.2 m`
- `-0.5 m`
- `-0.8 m`

All other intended experimental factors were kept fixed for the controlled comparison.