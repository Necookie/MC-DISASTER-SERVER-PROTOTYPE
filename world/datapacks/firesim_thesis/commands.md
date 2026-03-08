# FireSim Commands Reference

This file lists all commands for the `firesim` datapack.

## Quick Start (Operator)
1. `/reload`
2. `/function firesim:setup/install`
3. Press lobby button:
- Fire: `0 65 4`
- Earthquake: `2 65 4`

## Main Operator Commands
1. `/function firesim:setup/install`
- One-time/full install: resets runtime, builds lobby + simulation, creates backup clone, sets world spawn.

2. `/function firesim:admin/rebuild_everything`
- Rebuilds all geometry and refreshes backup snapshot.

3. `/function firesim:setup/reset_system`
- Resets state/tags/UI to idle without rebuilding structures.

4. `/function firesim:reset/restore_structure`
- Restores simulation area from backup immediately.

## Datapack Validation Commands
1. `/datapack list`
- Confirms datapack is enabled.

2. `/reload`
- Reloads function tags (`load` and `tick`) and all functions.

## Runtime Debug Commands
1. `/function firesim:runtime/start_simulation`
2. `/function firesim:runtime/start_fire_simulation`
3. `/function firesim:runtime/start_earthquake_simulation`
4. `/function firesim:runtime/start_fire`
5. `/function firesim:runtime/start_earthquake`
6. `/function firesim:runtime/active_tick`
7. `/function firesim:runtime/reignite`
8. `/function firesim:runtime/earthquake_tick`
9. `/function firesim:runtime/stop_fire`
10. `/function firesim:runtime/stop_earthquake`
11. `/function firesim:runtime/return_to_lobby`
12. `/function firesim:runtime/earthquake_cracks`
13. `/function firesim:runtime/earthquake_structural_damage`

Use these only for debugging/inspection. Normal flow is button-driven.

## Build Debug Commands
1. `/function firesim:build/all`
2. `/function firesim:build/lobby`
3. `/function firesim:build/sim_zone`
4. `/function firesim:build/backup`

## Internal/System Functions (Usually No Manual Need)
1. `/function firesim:load`
2. `/function firesim:tick`
3. `/function firesim:runtime/check_start_button`
4. `/function firesim:runtime/lobby_ui_tick`
5. `/function firesim:runtime/prefire_tick`
6. `/function firesim:runtime/cooldown_tick`

## Emergency Recovery Sequence
Run in this order if behavior gets out of sync:
1. `/reload`
2. `/function firesim:admin/rebuild_everything`
3. `/function firesim:setup/reset_system`
4. `/tp @a 0.5 65 0.5 180 0`

## Notes
- During simulation start, datapack sets:
  - fire mode:
    - `gamerule doFireTick true`
    - `gamerule randomTickSpeed 30`
  - earthquake mode:
    - `gamerule doFireTick false`
    - `gamerule randomTickSpeed 3`
- On return to lobby, it restores:
  - `gamerule randomTickSpeed 3`
