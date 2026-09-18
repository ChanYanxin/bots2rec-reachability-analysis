# Results summary

## Reachability

The baseline configuration concentrated useful reachability above the wheel plane and showed limited ability to operate below it.

Lowering the first rotational axis shifted the workspace downward:

- `-0.2 m`: improved low-level reachability, but lower regions were still limited.
- `-0.5 m`: substantial improvement below the wheel plane.
- `-0.8 m`: further low-level improvement for the free-index settings that generated valid maps.

The thesis therefore supports the mechanical-design observation that a relatively small change to the first-axis height can materially change task-specific workspace coverage.

## Redundancy sensitivity

Reachability maps differed across free-index choices. At the `-0.8 m` geometry, the `freeindex=4` configuration produced too few IK solutions to visualize the map correctly, while other tested free-index settings still generated maps.

This motivated the use of composite reachability views across feasible redundancy configurations when interpreting the manipulator's overall capability.

## Base placement

For the fixed ship-cutting task pose, the thesis recorded Reuleaux base-placement scores of:

| Axis offset | Reuleaux score |
|---|---:|
| 0.0 m | 200 |
| -0.2 m | 175 |
| -0.5 m | 50 |
| -0.8 m | 80 |

These values are **tool-specific experiment outputs**, not normalized universal performance scores.

The union maps showed the central trade-off of the study: lowering the axis improved access to low regions but could reduce the size/flexibility of the candidate base-placement area.

## Engineering takeaway

A geometry change should not be judged by end-effector reach alone. For a mobile manipulator, robot geometry, redundant IK behavior, and feasible base placement interact and should be evaluated together for the target task.