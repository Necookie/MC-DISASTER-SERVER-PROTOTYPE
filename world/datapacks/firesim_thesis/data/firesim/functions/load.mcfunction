# Firesim load hook: initialize scoreboard objectives and constants safely on /reload.
scoreboard objectives add fs_state dummy
scoreboard objectives add fs_sec dummy
scoreboard objectives add fs_tick dummy
scoreboard objectives add fs_math dummy
scoreboard objectives add fs_const dummy
scoreboard objectives add fs_mode dummy

# Constant values used for second/tick conversions.
scoreboard players set $twenty fs_const 20
scoreboard players set $two fs_const 2

# Ensure the runtime state exists after load.
execute unless score $state fs_state matches 0.. run scoreboard players set $state fs_state 0
execute unless score $sec fs_sec matches 0.. run scoreboard players set $sec fs_sec 0
execute unless score $tick fs_tick matches 0.. run scoreboard players set $tick fs_tick 0
execute unless score $mode fs_mode matches 1..2 run scoreboard players set $mode fs_mode 1

# Lightweight hint on reload.
tellraw @a [{"text":"[firesim] Reloaded. Run ","color":"yellow"},{"text":"/function firesim:setup/install","color":"gold"},{"text":" once to build the thesis prototype (fire + earthquake).","color":"yellow"}]
