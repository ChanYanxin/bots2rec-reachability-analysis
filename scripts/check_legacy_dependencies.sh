#!/usr/bin/env bash
set -euo pipefail

commands=(roscore rviz openrave openrave-robot.py)
missing=0

for cmd in "${commands[@]}"; do
  if command -v "$cmd" >/dev/null 2>&1; then
    printf "[ok]      %s\n" "$cmd"
  else
    printf "[missing] %s\n" "$cmd"
    missing=1
  fi
done

echo
echo "Original thesis environment: Ubuntu 14.04 + ROS Indigo + OpenRAVE + Reuleaux + RViz."
echo "This script only reports command availability; it does not install or validate version compatibility."

exit "$missing"