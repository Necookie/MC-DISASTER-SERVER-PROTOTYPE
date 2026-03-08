kill @e[type=minecraft:marker,tag=ds_ignite]
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["ds_ignite"]}
tellraw @s [{"text":"[DisasterSim] Fire ignition marker set.","color":"green"}]
