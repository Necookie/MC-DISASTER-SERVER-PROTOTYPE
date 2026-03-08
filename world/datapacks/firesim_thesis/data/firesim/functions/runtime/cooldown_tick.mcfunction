# Post-run cooldown before teleport back to lobby.
execute if score $sec fs_sec matches 1.. run title @a[tag=firesim_in_sim] actionbar [{"text":"Reset complete. Returning in ","color":"aqua"},{"score":{"name":"$sec","objective":"fs_sec"}},{"text":"s","color":"aqua"}]

scoreboard players remove $tick fs_tick 1
execute if score $tick fs_tick matches ..0 run scoreboard players set $tick fs_tick 20
execute if score $tick fs_tick matches 20 if score $sec fs_sec matches 1.. run scoreboard players remove $sec fs_sec 1

execute if score $sec fs_sec matches ..0 run function firesim:runtime/return_to_lobby
