# OpenRAVE / IKFast workflow

This document reconstructs the kinematics workflow used in the thesis. It is a historical workflow for a legacy ROS/OpenRAVE environment, not a claim of current plug-and-play compatibility.

## Pipeline

1. Start from the robot URDF.
2. Create the geometry variant by changing the vertical position of the first rotational axis.
3. Convert the URDF model to COLLADA (`.dae`) for OpenRAVE.
4. Round COLLADA numeric values to reduce symbolic IK generation time. The thesis used three decimal places for the experiment.
5. Load the COLLADA model in OpenRAVE and inspect the link/joint hierarchy.
6. Determine the base-link and end-effector link indices.
7. Generate a `Transform6D` IKFast solver for each candidate free index.
8. Integrate the generated solver into Reuleaux `map_creator`.
9. Generate reachability and inverse-reachability maps.
10. Visualize maps in RViz and run the base-placement analysis.

## Parameters recorded in the thesis

- `iktype = transform6d`
- `baselink = 0`
- `eelink = 12`
- primary `freeindex = 4`

## Model inspection

The thesis explicitly used OpenRAVE to load the generated COLLADA model and `openrave-robot.py` to inspect link indices. A representative historical command was:

```bash
openrave ~/catkin_ws/src/Bots2REc_V2_URDF_Meshsimpl/urdf/Bots2REc_V2_URDF.dae
```

The exact local path is intentionally not reproduced as a requirement in the helper scripts; use your own model path.

## Reuleaux integration

The generated IKFast source was copied into the Reuleaux `map_creator/include` area and referenced from the package kinematics header so that map generation could call the analytical solver.

## Important interpretation

A free index is not an extra physical joint. It is the selected redundant joint parameter exposed to the analytical IK solver while solving a 6D end-effector pose for a 7-DOF manipulator.