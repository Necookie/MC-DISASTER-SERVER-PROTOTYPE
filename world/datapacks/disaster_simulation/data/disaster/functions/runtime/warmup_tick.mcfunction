scoreboard players remove #timer ds_runtime 1

# Countdown message each second.
execute if score #timer ds_runtime matches 99 run scoreboard players set #seconds ds_runtime 4
execute if score #timer ds_runtime matches 79 run scoreboard players set #seconds ds_runtime 3
execute if score #timer ds_runtime matches 59 run scoreboard players set #seconds ds_runtime 2
execute if score #timer ds_runtime matches 39 run scoreboard players set #seconds ds_runtime 1
execute if score #timer ds_runtime matches 19 run scoreboard players set #seconds ds_runtime 0
title @a[tag=ds_session] actionbar [{"text":"Fire in ","color":"yellow"},{"score":{"name":"#seconds","objective":"ds_runtime"},"color":"red"},{"text":"...","color":"yellow"}]

# Transition into fire phase.
execute if score #timer ds_runtime matches ..0 run function disaster:runtime/fire_start
