# Active disaster runtime.
execute if score $sec fs_sec matches 1.. if score $mode fs_mode matches 1 run title @a[tag=firesim_in_sim] actionbar [{"text":"Fire Timer: ","color":"red"},{"score":{"name":"$sec","objective":"fs_sec"}},{"text":"s","color":"red"}]
execute if score $sec fs_sec matches 1.. if score $mode fs_mode matches 2 run title @a[tag=firesim_in_sim] actionbar [{"text":"Quake Timer: ","color":"gold"},{"score":{"name":"$sec","objective":"fs_sec"}},{"text":"s","color":"gold"}]

scoreboard players remove $tick fs_tick 1
execute if score $tick fs_tick matches ..0 run scoreboard players set $tick fs_tick 20
execute if score $tick fs_tick matches 20 if score $sec fs_sec matches 1.. if score $mode fs_mode matches 1 run function firesim:runtime/reignite
execute if score $tick fs_tick matches 20 if score $sec fs_sec matches 1.. if score $mode fs_mode matches 2 run function firesim:runtime/earthquake_tick
execute if score $tick fs_tick matches 15 if score $sec fs_sec matches 1.. if score $mode fs_mode matches 2 run function firesim:runtime/earthquake_tick
execute if score $tick fs_tick matches 10 if score $sec fs_sec matches 1.. if score $mode fs_mode matches 2 run function firesim:runtime/earthquake_tick
execute if score $tick fs_tick matches 5 if score $sec fs_sec matches 1.. if score $mode fs_mode matches 2 run function firesim:runtime/earthquake_tick
execute if score $tick fs_tick matches 20 if score $sec fs_sec matches 1.. if score $mode fs_mode matches 2 run function firesim:runtime/earthquake_cracks
execute if score $tick fs_tick matches 20 if score $sec fs_sec matches 1.. if score $mode fs_mode matches 2 run function firesim:runtime/earthquake_structural_damage
execute if score $tick fs_tick matches 20 if score $sec fs_sec matches 1.. run scoreboard players remove $sec fs_sec 1

execute if score $sec fs_sec matches ..0 if score $mode fs_mode matches 1 run function firesim:runtime/stop_fire
execute if score $sec fs_sec matches ..0 if score $mode fs_mode matches 2 run function firesim:runtime/stop_earthquake
