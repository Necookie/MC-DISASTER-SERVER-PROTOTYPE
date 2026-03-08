# Runtime reset: return to idle state and clear temporary tags.
scoreboard players set $state fs_state 0
scoreboard players set $sec fs_sec 0
scoreboard players set $tick fs_tick 0
scoreboard players set $tmp fs_math 0

tag @a remove firesim_in_sim
tag @a remove firesim_in_lobby
tag @a remove firesim_lobby_notified

title @a actionbar ""
