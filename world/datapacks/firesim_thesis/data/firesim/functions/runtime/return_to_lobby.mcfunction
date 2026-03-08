# Return active participants to lobby and reset runtime state.
tp @a[tag=firesim_in_sim] 0.5 65 0.5 180 0
gamerule randomTickSpeed 3

# Clear simulation membership tags.
tag @a remove firesim_in_sim

# Reset state machine to idle for next run.
scoreboard players set $state fs_state 0
scoreboard players set $sec fs_sec 0
scoreboard players set $tick fs_tick 0

title @a actionbar ""
