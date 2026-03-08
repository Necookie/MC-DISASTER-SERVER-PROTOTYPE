kill @e[type=minecraft:marker,tag=ds_sim_min]
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["ds_sim_min"]}
tellraw @s [{"text":"[DisasterSim] Simulation min-corner marker set.","color":"green"}]
