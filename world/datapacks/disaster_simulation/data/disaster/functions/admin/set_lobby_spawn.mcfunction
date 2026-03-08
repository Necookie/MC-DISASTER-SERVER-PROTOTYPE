kill @e[type=minecraft:marker,tag=ds_lobby_spawn]
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["ds_lobby_spawn"]}
tellraw @s [{"text":"[DisasterSim] Lobby spawn marker set.","color":"green"}]
