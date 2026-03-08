# Fire Simulation Thesis Prototype (Forge 1.20.4)

Datapack namespace: `firesim`  
Datapack folder: `world/datapacks/firesim_thesis`

This prototype provides a complete disaster-demo loop:
1. Spawn in lobby
2. Press fire or earthquake button to start
3. Teleport to simulation zone
4. 5-second countdown
5. Disaster simulation runs with visible timer
6. Simulation stops, structure is restored, players return to lobby
7. System resets and is reusable

Main implementation is datapack functions + scoreboards (no command-block spaghetti).

---

## Current Prototype Scope

### Lobby
- Auto-built around `0 65 0`
- Floating text:
  - `Welcome to the Lobby`
  - `Disaster Simulation`
  - `Left: Fire | Right: Earthquake`
- Fire button at `0 65 4`
- Earthquake button at `2 65 4`

### Fire Simulation Zone (Large School)
- Simulation center/spawn: `26 -60 -11`
- Active sim bounds: `6 -61 -30` to `46 -53 8`
- Underground backup bounds: `6 -100 -30` to `46 -92 8`
- Large school-style building with:
  - main entrance and rear emergency exit
  - central corridor
  - multi-room/classroom wing layout
  - school-like props (desks, shelves, lockers-style details, signage)
  - distributed flammable fuel points

### Fire Behavior
- Pre-fire countdown: `5s`
- Fire runtime: `45s`
- Aggressive spread during run:
  - `gamerule doFireTick true`
  - `gamerule randomTickSpeed 30`
- Continuous re-ignition pulses during active phase
- On return to lobby:
  - `randomTickSpeed` restored to `3`

### Earthquake Behavior
- Pre-event countdown: `5s`
- Quake runtime: `45s`
- High-magnitude earthquake pulse twice per second:
  - rumble sounds + dust particles
  - status-effect-free shake via stronger lateral movement/jitter
  - heavy falling debris entities with impact damage on hit
- Progressive floor cracking:
  - early visible cracks
  - mid-stage unstable fractured floor
  - late-stage open floor breaks (holes)
- Progressive structural failure:
  - window/wall panel blowouts
  - roof and side-wall partial collapses
  - late-stage heavy interior collapse sections
- Debris is cleaned up on stop/return

---

## Architecture

### State Machine
- Objective: `fs_state`
- Values:
  - `0` = idle (wait for lobby button)
  - `1` = prefire countdown
  - `2` = active simulation
  - `3` = cooldown/return

### Mode Selector
- Objective: `fs_mode`
- Values:
  - `1` = fire
  - `2` = earthquake

### Runtime Objectives
- `fs_state` (state control)
- `fs_sec` (second counter)
- `fs_tick` (tick counter)
- `fs_math`, `fs_const` (utility/constants)
- `fs_mode` (fire/earthquake mode)

### Core Tags
- `firesim_in_sim` (participants in current run)
- `firesim_in_lobby` (players in lobby bounds)
- `firesim_lobby_notified` (prevents repeated lobby title spam)

---

## File Structure

```text
firesim_thesis/
  pack.mcmeta
  README.md
  commands.md
  data/
    minecraft/
      tags/functions/
        load.json
        tick.json
    firesim/
      functions/
        load.mcfunction
        tick.mcfunction
        setup/
          install.mcfunction
          reset_system.mcfunction
        build/
          all.mcfunction
          lobby.mcfunction
          sim_zone.mcfunction
          backup.mcfunction
        runtime/
          check_start_button.mcfunction
          start_fire_simulation.mcfunction
          start_earthquake_simulation.mcfunction
          start_simulation.mcfunction
          prefire_tick.mcfunction
          start_fire.mcfunction
          start_earthquake.mcfunction
          active_tick.mcfunction
          reignite.mcfunction
          earthquake_tick.mcfunction
          earthquake_structural_damage.mcfunction
          stop_fire.mcfunction
          stop_earthquake.mcfunction
          cooldown_tick.mcfunction
          return_to_lobby.mcfunction
          lobby_ui_tick.mcfunction
        reset/
          restore_structure.mcfunction
        admin/
          rebuild_everything.mcfunction
```

---

## Zero-to-Working Setup

1. Ensure datapack exists at:
   - `world/datapacks/firesim_thesis`
2. Join server as OP.
3. Run:
   - `/reload`
4. Run:
   - `/function firesim:setup/install`
5. Press lobby button at:
   - fire: `0 65 4`
   - earthquake: `2 65 4`

No structure block and no command block are required for standard operation.

---

## Demo Flow (Expected)

1. Player is in lobby.
2. Player presses start button.
3. Player teleports to `26 -60 -11`.
4. Actionbar shows prefire countdown (`5` to `1`).
5. Disaster event starts (fire ignition or earthquake pulses/debris).
6. Actionbar shows runtime timer (`45` to `1`).
7. Simulation completes:
   - fire extinguished
   - structure restored from underground backup clone
   - player teleported back to lobby
   - system idle and ready for next run

---

## Reset and Reliability Design

- Build snapshot is cloned to backup region after build.
- End-of-run restoration uses deterministic clone restore.
- Rebuild command refreshes both world geometry and backup snapshot.
- Runtime reset command clears state/tags without rebuilding.

This makes it reusable for repeated thesis demos without manual rebuilding.

---

## Testing Procedure

1. `/reload`
2. `/function firesim:setup/install`
3. Press button once and verify:
   - teleport to simulation
   - 5-second countdown
   - visible event behavior (fire spread or quake debris)
   - 45-second actionbar timer
   - completion title
   - teleport back to lobby
   - structure fully reset
4. Repeat for 2-3 cycles.

---

## Troubleshooting

### Button does nothing
1. Confirm button exists at `0 65 4`.
2. Run `/function firesim:setup/install`.
3. Check `/datapack list`.

### Structure does not restore correctly
1. Run `/function firesim:admin/rebuild_everything`.
2. Run simulation again.

### State feels stuck
1. `/function firesim:setup/reset_system`
2. `/tp @a 0.5 65 0.5 180 0`
3. Press button again.

### Fire too weak/too strong for your demo machine
- Current setting is `randomTickSpeed 30` during active run.
- You can tune in `runtime/start_simulation.mcfunction`.

---

## Command Index

All command references are documented in:
- `commands.md`

Use it as your operator checklist during thesis defense/demo.

---

## Extensibility

The datapack is modular and ready for expansion:
- Add flood module in `functions/runtime` + `functions/build`
- Add earthquake module with separate state paths
- Keep same lobby and button dispatch pattern
- Reuse clone backup/restore pattern for deterministic reset
