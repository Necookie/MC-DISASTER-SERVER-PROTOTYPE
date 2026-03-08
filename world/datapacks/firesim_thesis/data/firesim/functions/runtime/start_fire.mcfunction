# Transition into the active fire simulation.
scoreboard players set $state fs_state 2
scoreboard players set $sec fs_sec 45
scoreboard players set $tick fs_tick 20

# Initial ignition points across wings, corridor, and roofline.
setblock 14 -59 -24 fire
setblock 18 -59 -24 fire
setblock 34 -59 -24 fire
setblock 38 -59 -24 fire
setblock 14 -59 -16 fire
setblock 38 -59 -16 fire
setblock 14 -59 -8 fire
setblock 38 -59 -8 fire
setblock 26 -59 -24 fire
setblock 26 -59 -16 fire
setblock 26 -59 -8 fire
setblock 26 -58 -12 fire
setblock 20 -58 -20 fire
setblock 32 -58 -20 fire

title @a[tag=firesim_in_sim] title {"text":"Fire Started","color":"red","bold":true}
title @a[tag=firesim_in_sim] subtitle {"text":"Evacuate / Observe for 45 seconds","color":"gold"}
playsound minecraft:entity.blaze.shoot master @a[tag=firesim_in_sim] 26 -60 -11 1 0.9
