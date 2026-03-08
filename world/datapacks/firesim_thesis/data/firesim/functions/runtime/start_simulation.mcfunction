# Start sequence from lobby -> simulation zone.
scoreboard players set $state fs_state 1
scoreboard players set $sec fs_sec 5
scoreboard players set $tick fs_tick 20
gamerule doFireTick true
gamerule randomTickSpeed 30

# Mark participants from the lobby footprint and teleport them.
tag @a[x=-12,y=63,z=-12,dx=24,dy=12,dz=24] add firesim_in_sim
tp @a[tag=firesim_in_sim] 26 -60 -11 180 0

title @a[tag=firesim_in_sim] title {"text":"Simulation Starting","color":"gold","bold":true}
title @a[tag=firesim_in_sim] subtitle {"text":"Ignition in 5 seconds","color":"yellow"}
playsound minecraft:block.note_block.pling master @a[tag=firesim_in_sim] 26 -60 -11 1 1
