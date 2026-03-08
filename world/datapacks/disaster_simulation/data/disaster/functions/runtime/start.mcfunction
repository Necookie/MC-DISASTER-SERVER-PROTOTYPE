# Guard against double-start.
execute unless score #state ds_runtime matches 0 run return 1

# Clear any old scheduled tasks.
schedule clear disaster:runtime/fire_start
schedule clear disaster:runtime/restore

# Tag participants near lobby and teleport only them to sim spawn.
tag @a remove ds_session
execute at @e[type=minecraft:marker,tag=ds_lobby_spawn,limit=1] run tag @a[distance=..8,gamemode=!spectator] add ds_session
execute as @a[tag=ds_session] at @s run tp @s @e[type=minecraft:marker,tag=ds_sim_spawn,limit=1]

# Start 5-second warmup.
scoreboard players set #state ds_runtime 1
scoreboard players set #timer ds_runtime 100
scoreboard players set #seconds ds_runtime 5
title @a[tag=ds_session] title {"text":"Simulation Started","color":"red"}
title @a[tag=ds_session] subtitle {"text":"Fire starts in 5 seconds","color":"gold"}

# Guaranteed transition to fire phase.
schedule function disaster:runtime/fire_start 5s replace
