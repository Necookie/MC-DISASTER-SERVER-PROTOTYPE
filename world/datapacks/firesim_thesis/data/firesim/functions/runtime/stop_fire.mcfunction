# Stop the simulation, restore structure, then hold a short completion banner.
scoreboard players set $state fs_state 3
scoreboard players set $sec fs_sec 3
scoreboard players set $tick fs_tick 20

# Hard extinguish residual fire and restore original clean structure.
fill 6 -61 -30 46 -53 8 air replace fire
function firesim:reset/restore_structure

title @a[tag=firesim_in_sim] title {"text":"Simulation Complete","color":"green","bold":true}
title @a[tag=firesim_in_sim] subtitle {"text":"Returning to lobby...","color":"white"}
playsound minecraft:entity.player.levelup master @a[tag=firesim_in_sim] 26 -60 -11 0.8 1
