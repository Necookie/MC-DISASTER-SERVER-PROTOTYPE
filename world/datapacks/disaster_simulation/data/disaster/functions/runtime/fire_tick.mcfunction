scoreboard players remove #timer ds_runtime 1

# Show remaining time every second.
execute if score #timer ds_runtime matches 599 run scoreboard players set #seconds ds_runtime 29
execute if score #timer ds_runtime matches 579 run scoreboard players set #seconds ds_runtime 28
execute if score #timer ds_runtime matches 559 run scoreboard players set #seconds ds_runtime 27
execute if score #timer ds_runtime matches 539 run scoreboard players set #seconds ds_runtime 26
execute if score #timer ds_runtime matches 519 run scoreboard players set #seconds ds_runtime 25
execute if score #timer ds_runtime matches 499 run scoreboard players set #seconds ds_runtime 24
execute if score #timer ds_runtime matches 479 run scoreboard players set #seconds ds_runtime 23
execute if score #timer ds_runtime matches 459 run scoreboard players set #seconds ds_runtime 22
execute if score #timer ds_runtime matches 439 run scoreboard players set #seconds ds_runtime 21
execute if score #timer ds_runtime matches 419 run scoreboard players set #seconds ds_runtime 20
execute if score #timer ds_runtime matches 399 run scoreboard players set #seconds ds_runtime 19
execute if score #timer ds_runtime matches 379 run scoreboard players set #seconds ds_runtime 18
execute if score #timer ds_runtime matches 359 run scoreboard players set #seconds ds_runtime 17
execute if score #timer ds_runtime matches 339 run scoreboard players set #seconds ds_runtime 16
execute if score #timer ds_runtime matches 319 run scoreboard players set #seconds ds_runtime 15
execute if score #timer ds_runtime matches 299 run scoreboard players set #seconds ds_runtime 14
execute if score #timer ds_runtime matches 279 run scoreboard players set #seconds ds_runtime 13
execute if score #timer ds_runtime matches 259 run scoreboard players set #seconds ds_runtime 12
execute if score #timer ds_runtime matches 239 run scoreboard players set #seconds ds_runtime 11
execute if score #timer ds_runtime matches 219 run scoreboard players set #seconds ds_runtime 10
execute if score #timer ds_runtime matches 199 run scoreboard players set #seconds ds_runtime 9
execute if score #timer ds_runtime matches 179 run scoreboard players set #seconds ds_runtime 8
execute if score #timer ds_runtime matches 159 run scoreboard players set #seconds ds_runtime 7
execute if score #timer ds_runtime matches 139 run scoreboard players set #seconds ds_runtime 6
execute if score #timer ds_runtime matches 119 run scoreboard players set #seconds ds_runtime 5
execute if score #timer ds_runtime matches 99 run scoreboard players set #seconds ds_runtime 4
execute if score #timer ds_runtime matches 79 run scoreboard players set #seconds ds_runtime 3
execute if score #timer ds_runtime matches 59 run scoreboard players set #seconds ds_runtime 2
execute if score #timer ds_runtime matches 39 run scoreboard players set #seconds ds_runtime 1
execute if score #timer ds_runtime matches 19 run scoreboard players set #seconds ds_runtime 0
title @a[tag=ds_session] actionbar [{"text":"Fire event: ","color":"gold"},{"score":{"name":"#seconds","objective":"ds_runtime"},"color":"red"},{"text":"s left","color":"gold"}]

execute if score #timer ds_runtime matches ..0 run scoreboard players set #state ds_runtime 3
