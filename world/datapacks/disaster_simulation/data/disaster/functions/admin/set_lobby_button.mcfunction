kill @e[type=minecraft:marker,tag=ds_lobby_button]
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["ds_lobby_button"]}
tellraw @s [{"text":"[DisasterSim] Lobby button marker set.","color":"green"}]
