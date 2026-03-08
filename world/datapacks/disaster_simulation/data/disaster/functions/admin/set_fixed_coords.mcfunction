kill @e[type=minecraft:marker,tag=ds_lobby_spawn]
kill @e[type=minecraft:marker,tag=ds_sim_spawn]
kill @e[type=minecraft:marker,tag=ds_sim_min]
kill @e[type=minecraft:marker,tag=ds_ignite]

# Lobby: 75 -60 -4
summon minecraft:marker 75 -60 -4 {Tags:["ds_lobby_spawn"]}

# Simulation: 27 -60 -12
summon minecraft:marker 27 -60 -12 {Tags:["ds_sim_spawn"]}
summon minecraft:marker 27 -60 -12 {Tags:["ds_sim_min"]}
summon minecraft:marker 27 -60 -12 {Tags:["ds_ignite"]}
