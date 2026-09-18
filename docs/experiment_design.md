# Experiment design

## Research question

How does lowering the first rotational axis of the Bots2Rec manipulator affect task-relevant reachability and candidate mobile-base placements for ship-recycling operations?

## Independent variable

Vertical offset of the first rotational axis:

| Variant | Offset |
|---|---:|
| Baseline | 0.0 m |
| A | -0.2 m |
| B | -0.5 m |
| C | -0.8 m |

## Controlled settings

For the primary comparison, robot configuration conventions, IK type, selected free joint, map-generation procedure, and visualization settings were intended to remain fixed.

## Evaluation

The thesis primarily used qualitative, task-oriented evaluation rather than only global workspace volume. The analysis focused on:

- how reachable regions shift relative to the wheel plane,
- whether low-level cutting poses become more accessible,
- how redundancy/free-index selection affects the maps,
- how the feasible base-placement region changes for a fixed cutting pose.

## Base-placement case study

The task pose was:

- position: `x=0, y=0, z=-0.7 m`
- orientation: `roll=240°, pitch=0°, yaw=30°`

Candidate base locations and union maps were generated for the four geometry variants.