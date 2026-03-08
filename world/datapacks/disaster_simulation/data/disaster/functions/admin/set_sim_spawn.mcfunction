kill @e[type=minecraft:marker,tag=ds_sim_spawn]
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["ds_sim_spawn"]}
tellraw @s [{"text":"[DisasterSim] Simulation spawn marker set.","color":"green"}]
