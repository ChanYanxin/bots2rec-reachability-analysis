#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 /path/to/robot.dae"
  exit 2
fi

MODEL="$1"

echo "[1/2] Opening model in OpenRAVE..."
openrave "$MODEL"

echo "[2/2] Inspecting robot/link information..."
openrave-robot.py "$MODEL" --info links || true

echo "Note: command-line options vary across OpenRAVE versions; this helper targets the legacy workflow."