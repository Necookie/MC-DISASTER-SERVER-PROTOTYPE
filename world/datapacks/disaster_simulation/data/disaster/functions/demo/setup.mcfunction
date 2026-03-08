# Build a clean demo structure in the simulation square and store backup copy.
# Demo structure bounds: x -12..12, y -60..-50, z -20..-4
# Backup bounds:         x  50..74, y -60..-50, z -20..-4

gamerule doFireTick false

# Clear build + backup areas
fill -12 -60 -20 12 -50 -4 air
fill 50 -60 -20 74 -50 -4 air

# Main shell
fill -12 -60 -20 12 -60 -4 stone_bricks
fill -12 -59 -20 12 -50 -4 smooth_stone
fill -11 -59 -19 11 -51 -5 air
fill -12 -50 -20 12 -50 -4 stone_bricks

# Door
fill -1 -59 -4 1 -58 -4 air

# Windows
fill -12 -58 -14 -12 -56 -10 glass_pane
fill 12 -58 -14 12 -56 -10 glass_pane

# Interior furniture/mock classroom
fill -8 -60 -16 8 -60 -8 oak_planks
fill -8 -59 -16 -6 -59 -15 spruce_slab
fill -5 -59 -16 -3 -59 -15 spruce_slab
fill -2 -59 -16 0 -59 -15 spruce_slab
fill 1 -59 -16 3 -59 -15 spruce_slab
fill 4 -59 -16 6 -59 -15 spruce_slab

# Save clean baseline into local backup lane
clone -12 -60 -20 12 -50 -4 50 -60 -20 replace force

tellraw @a [{"text":"[DisasterSim] Demo building created and baseline saved.","color":"green"}]
