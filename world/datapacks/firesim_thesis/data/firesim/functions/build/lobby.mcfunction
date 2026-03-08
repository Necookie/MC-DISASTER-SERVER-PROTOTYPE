# Build a compact floating lobby around 0 65 0.
# Includes title text entities and a start button detectable by datapack logic.

# Clear lobby volume.
fill -12 63 -12 12 76 12 air

# Platform and perimeter.
fill -8 64 -8 8 64 8 smooth_quartz
fill -8 65 -8 8 65 -8 polished_andesite
fill -8 65 8 8 65 8 polished_andesite
fill -8 65 -8 -8 65 8 polished_andesite
fill 8 65 -8 8 65 8 polished_andesite

# Four clean corner pillars for visual framing.
fill -8 65 -8 -8 68 -8 quartz_pillar
fill -8 65 8 -8 68 8 quartz_pillar
fill 8 65 -8 8 68 -8 quartz_pillar
fill 8 65 8 8 68 8 quartz_pillar

# Start pedestal and button (detected at 0 65 4).
setblock 0 64 4 gold_block
setblock 0 65 4 stone_button[face=floor,facing=north,powered=false]
setblock 0 64 3 polished_andesite
setblock 0 64 2 polished_andesite

# Cleanup and re-add floating text labels.
kill @e[type=minecraft:armor_stand,tag=firesim_lobby_text]
summon minecraft:armor_stand 0 67 -2 {Tags:["firesim_lobby_text"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:'{"text":"Welcome to the Lobby","color":"gold","bold":true}'}
summon minecraft:armor_stand 0 66 -1 {Tags:["firesim_lobby_text"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:'{"text":"Fire Simulation","color":"red","bold":true}'}
summon minecraft:armor_stand 0 65 1 {Tags:["firesim_lobby_text"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:'{"text":"Press Button to Start","color":"white"}'}

# Ensure lobby spawn footing.
setblock 0 64 0 sea_lantern
