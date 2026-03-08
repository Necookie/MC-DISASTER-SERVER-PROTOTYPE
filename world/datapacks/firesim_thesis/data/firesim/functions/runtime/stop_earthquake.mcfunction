# Stop earthquake simulation, restore structure, then hold a short completion banner.
scoreboard players set $state fs_state 3
scoreboard players set $sec fs_sec 3
scoreboard players set $tick fs_tick 20

# Cleanup debris entities and restore original clean structure.
kill @e[type=minecraft:falling_block,tag=firesim_quake_debris]
function firesim:reset/restore_structure

title @a[tag=firesim_in_sim] title {"text":"Simulation Complete","color":"green","bold":true}
title @a[tag=firesim_in_sim] subtitle {"text":"Earthquake ended. Returning to lobby...","color":"white"}
playsound minecraft:entity.player.levelup master @a[tag=firesim_in_sim] 26 -60 -11 0.8 1
