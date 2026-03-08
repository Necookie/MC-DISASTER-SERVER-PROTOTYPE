# Build the active fire simulation zone centered around 26 -60 -11.
# Active bounds: x=6..46, y=-61..-53, z=-30..8

# Clear and create an expanded controlled burn chamber shell.
fill 5 -62 -31 47 -52 9 air
fill 6 -61 -30 46 -61 8 stone_bricks
fill 6 -60 -30 46 -54 -30 stone_bricks
fill 6 -60 8 46 -54 8 stone_bricks
fill 6 -60 -30 6 -54 8 stone_bricks
fill 46 -60 -30 46 -54 8 stone_bricks
fill 6 -53 -30 46 -53 8 stone_bricks

# Observation windows.
fill 20 -59 -30 32 -57 -30 glass_pane
fill 20 -59 8 32 -57 8 glass_pane
fill 6 -59 -20 6 -57 -10 glass_pane
fill 46 -59 -20 46 -57 -10 glass_pane

# Chamber front access and threshold.
fill 25 -60 8 28 -58 8 air
setblock 25 -61 8 polished_deepslate
setblock 26 -61 8 polished_deepslate
setblock 27 -61 8 polished_deepslate
setblock 28 -61 8 polished_deepslate

# Build a large school building.
# School shell footprint: x=10..42, y=-60..-54, z=-28..6
fill 10 -60 -28 42 -60 6 oak_planks
fill 10 -59 -28 42 -55 -28 spruce_planks
fill 10 -59 6 42 -55 6 spruce_planks
fill 10 -59 -27 10 -55 5 stripped_oak_log
fill 42 -59 -27 42 -55 5 stripped_oak_log
fill 10 -54 -28 42 -54 6 spruce_planks

# Main entrance and rear emergency exit.
fill 25 -59 6 27 -58 6 air
setblock 25 -59 6 spruce_door[half=lower,facing=south,hinge=left,open=false]
setblock 25 -58 6 spruce_door[half=upper,facing=south,hinge=left,open=false]
setblock 26 -59 6 spruce_door[half=lower,facing=south,hinge=left,open=false]
setblock 26 -58 6 spruce_door[half=upper,facing=south,hinge=left,open=false]
setblock 27 -59 6 spruce_door[half=lower,facing=south,hinge=right,open=false]
setblock 27 -58 6 spruce_door[half=upper,facing=south,hinge=right,open=false]
fill 25 -59 -28 27 -58 -28 air
setblock 25 -59 -28 spruce_door[half=lower,facing=north,hinge=left,open=false]
setblock 25 -58 -28 spruce_door[half=upper,facing=north,hinge=left,open=false]
setblock 26 -59 -28 spruce_door[half=lower,facing=north,hinge=left,open=false]
setblock 26 -58 -28 spruce_door[half=upper,facing=north,hinge=left,open=false]
setblock 27 -59 -28 spruce_door[half=lower,facing=north,hinge=right,open=false]
setblock 27 -58 -28 spruce_door[half=upper,facing=north,hinge=right,open=false]

# Central hallway spine and side wings.
fill 24 -60 -27 28 -60 5 spruce_planks
fill 23 -59 -27 23 -55 5 stripped_oak_log
fill 29 -59 -27 29 -55 5 stripped_oak_log
fill 11 -59 -22 23 -55 -22 stripped_oak_log
fill 11 -59 -14 23 -55 -14 stripped_oak_log
fill 11 -59 -6 23 -55 -6 stripped_oak_log
fill 29 -59 -22 41 -55 -22 stripped_oak_log
fill 29 -59 -14 41 -55 -14 stripped_oak_log
fill 29 -59 -6 41 -55 -6 stripped_oak_log

# Classroom door openings from hallway.
fill 23 -59 -24 23 -58 -24 air
fill 23 -59 -18 23 -58 -18 air
fill 23 -59 -10 23 -58 -10 air
fill 23 -59 -2 23 -58 -2 air
fill 29 -59 -24 29 -58 -24 air
fill 29 -59 -18 29 -58 -18 air
fill 29 -59 -10 29 -58 -10 air
fill 29 -59 -2 29 -58 -2 air

# Exterior windows for realism.
fill 14 -58 6 20 -57 6 glass_pane
fill 32 -58 6 38 -57 6 glass_pane
fill 14 -58 -28 20 -57 -28 glass_pane
fill 32 -58 -28 38 -57 -28 glass_pane
fill 10 -58 -25 10 -57 -21 glass_pane
fill 10 -58 -17 10 -57 -13 glass_pane
fill 10 -58 -9 10 -57 -5 glass_pane
fill 42 -58 -25 42 -57 -21 glass_pane
fill 42 -58 -17 42 -57 -13 glass_pane
fill 42 -58 -9 42 -57 -5 glass_pane

# School details.
fill 24 -59 -26 24 -59 -22 barrel[facing=east,open=false]
fill 28 -59 -26 28 -59 -22 barrel[facing=west,open=false]
setblock 26 -58 -12 lantern[hanging=false,waterlogged=false]
setblock 26 -58 -20 lantern[hanging=false,waterlogged=false]
setblock 26 -58 -4 lantern[hanging=false,waterlogged=false]
setblock 26 -58 4 red_concrete
setblock 26 -58 -26 red_concrete

# Classroom furniture and fuel-heavy props.
setblock 13 -59 -25 dark_oak_stairs[facing=south,half=bottom,shape=straight]
setblock 16 -59 -25 dark_oak_stairs[facing=south,half=bottom,shape=straight]
setblock 19 -59 -25 dark_oak_stairs[facing=south,half=bottom,shape=straight]
setblock 33 -59 -25 dark_oak_stairs[facing=south,half=bottom,shape=straight]
setblock 36 -59 -25 dark_oak_stairs[facing=south,half=bottom,shape=straight]
setblock 39 -59 -25 dark_oak_stairs[facing=south,half=bottom,shape=straight]
setblock 13 -59 -9 dark_oak_stairs[facing=north,half=bottom,shape=straight]
setblock 16 -59 -9 dark_oak_stairs[facing=north,half=bottom,shape=straight]
setblock 19 -59 -9 dark_oak_stairs[facing=north,half=bottom,shape=straight]
setblock 33 -59 -9 dark_oak_stairs[facing=north,half=bottom,shape=straight]
setblock 36 -59 -9 dark_oak_stairs[facing=north,half=bottom,shape=straight]
setblock 39 -59 -9 dark_oak_stairs[facing=north,half=bottom,shape=straight]
setblock 12 -59 -4 bookshelf
setblock 13 -59 -4 bookshelf
setblock 39 -59 -4 bookshelf
setblock 40 -59 -4 bookshelf
setblock 12 -59 -27 crafting_table
setblock 40 -59 -27 crafting_table
setblock 15 -59 -3 white_wool
setblock 16 -59 -3 white_wool
setblock 36 -59 -3 white_wool
setblock 37 -59 -3 white_wool

# Distributed flammable fuel for aggressive spread.
setblock 14 -59 -24 hay_block
setblock 18 -59 -24 hay_block
setblock 34 -59 -24 hay_block
setblock 38 -59 -24 hay_block
setblock 14 -59 -16 hay_block
setblock 18 -59 -16 hay_block
setblock 34 -59 -16 hay_block
setblock 38 -59 -16 hay_block
setblock 14 -59 -8 hay_block
setblock 18 -59 -8 hay_block
setblock 34 -59 -8 hay_block
setblock 38 -59 -8 hay_block
setblock 26 -59 -24 hay_block
setblock 26 -59 -16 hay_block
setblock 26 -59 -8 hay_block
setblock 26 -59 -2 hay_block
setblock 22 -59 -12 bookshelf
setblock 30 -59 -12 bookshelf
setblock 22 -59 -20 bookshelf
setblock 30 -59 -20 bookshelf

# Simulation player spawn marker (exact thesis coordinate requested).
setblock 26 -61 -11 smooth_stone
