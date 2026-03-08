# Disaster Simulation Datapack

This datapack implements:
- trigger by command
- teleport nearby players to simulation zone
- 5-second countdown
- fire ignition + 30-second fire phase
- teleport players back to lobby
- restore simulation zone from cloned baseline backup

## Setup

1. Coordinates are fixed in this prototype:
   - lobby zone: `75 -60 -4`
   - simulation zone: `27 -60 -12`
2. Edit snapshot size in:
   - `data/disaster/functions/runtime/snapshot_region.mcfunction`
   - Default: `~ ~ ~` to `~20 ~10 ~20`
3. Run `/reload`.
4. Make sure the simulation building is in clean/pristine state.
5. Run `/function disaster:admin/capture_baseline` once.
6. Start simulation with `/function disaster:start`.

## How trigger works

- Run `/function disaster:start` to trigger the sequence.
- Players within 8 blocks of `ds_lobby_spawn` are included in the run.

## Notes

- Fire spread behavior depends on flammable blocks and world rules.
- Zone reset uses `clone` from hidden backup coordinates.
- To reset anchor markers:
  - `/function disaster:admin/reset_markers`
