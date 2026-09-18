#!/usr/bin/env bash
set -euo pipefail

# Historical parameter template reconstructed from the thesis.
# Exact OpenRAVE/IKFast CLI syntax depends on the installed legacy version.

MODEL=${1:-robot.dae}
FREEINDEX=${2:-4}
BASELINK=0
EELINK=12
IKTYPE=transform6d

cat <<EOF
Use these parameters when generating the IKFast solver:
  model      = ${MODEL}
  iktype     = ${IKTYPE}
  baselink   = ${BASELINK}
  eelink     = ${EELINK}
  freeindex  = ${FREEINDEX}

Generate and validate solvers for multiple free-index choices rather than assuming one redundant parameter is globally representative.
EOF