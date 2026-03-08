# Transition into the active earthquake simulation.
scoreboard players set $state fs_state 2
scoreboard players set $sec fs_sec 45
scoreboard players set $tick fs_tick 20

# Keep fire spread off for earthquake mode.
gamerule doFireTick false

title @a[tag=firesim_in_sim] title {"text":"Earthquake Started","color":"gold","bold":true}
title @a[tag=firesim_in_sim] subtitle {"text":"High-magnitude shaking and debris (45s)","color":"yellow"}
playsound minecraft:entity.warden.sonic_boom master @a[tag=firesim_in_sim] 26 -60 -11 1 0.5

# Run an immediate initial shake pulse.
function firesim:runtime/earthquake_tick
function firesim:runtime/earthquake_cracks
