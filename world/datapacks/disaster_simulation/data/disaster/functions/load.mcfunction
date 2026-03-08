# Core objectives
scoreboard objectives add ds_runtime dummy
scoreboard objectives add ds_config dummy

# Runtime state holders
# state: 0 idle, 1 warmup(5s), 2 fire phase(30s), 3 restore
scoreboard players set #state ds_runtime 0
scoreboard players set #timer ds_runtime 0
scoreboard players set #seconds ds_runtime 0

# Default config: region size offsets from sim_min corner, inclusive.
# Edit these if your building is larger.
scoreboard players add #x1 ds_config 20
scoreboard players add #y1 ds_config 10
scoreboard players add #z1 ds_config 20

# Fixed anchors for this prototype:
# simulation zone = 27 -60 -12
# lobby zone      = 75 -60 -4
function disaster:admin/set_fixed_coords

tellraw @a [{"text":"[DisasterSim] Loaded with fixed coordinates.","color":"gold"}]
