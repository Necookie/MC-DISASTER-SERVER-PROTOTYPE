scoreboard players set #state ds_runtime 2
scoreboard players set #timer ds_runtime 600
scoreboard players set #seconds ds_runtime 30

# Ignite the configured start point and allow natural spread.
gamerule doFireTick true
execute at @e[type=minecraft:marker,tag=ds_ignite,limit=1] run setblock ~ ~ ~ minecraft:fire replace
playsound minecraft:block.fire.ambient master @a[tag=ds_session] ~ ~ ~ 1 1
title @a[tag=ds_session] title {"text":"Evacuate!","color":"dark_red"}
title @a[tag=ds_session] subtitle {"text":"Fire simulation running (30s)","color":"gold"}

# Guaranteed transition to restore phase.
schedule function disaster:runtime/restore 30s replace
