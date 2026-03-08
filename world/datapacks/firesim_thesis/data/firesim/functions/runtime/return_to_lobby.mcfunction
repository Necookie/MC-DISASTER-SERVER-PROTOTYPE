# Return active participants to lobby and reset runtime state.
tp @a[tag=firesim_in_sim] 0.5 65 0.5 180 0
gamerule randomTickSpeed 3
kill @e[type=minecraft:falling_block,tag=firesim_quake_debris]
execute as @a[tag=firesim_in_sim] run data merge entity @s {Health:20.0f}
execute as @a[tag=firesim_in_sim] run data merge entity @s {foodLevel:20,foodSaturationLevel:20.0f,foodExhaustionLevel:0.0f}

# Clear simulation membership tags.
tag @a remove firesim_in_sim

# Reset state machine to idle for next run.
scoreboard players set $state fs_state 0
scoreboard players set $sec fs_sec 0
scoreboard players set $tick fs_tick 0
scoreboard players set $mode fs_mode 1

title @a actionbar ""
