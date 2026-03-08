# 5-second pre-fire countdown.
# Actionbar shows remaining seconds; transitions to ignition at 0.
execute if score $sec fs_sec matches 1.. run title @a[tag=firesim_in_sim] actionbar [{"text":"Ignition in ","color":"yellow"},{"score":{"name":"$sec","objective":"fs_sec"}},{"text":"s","color":"yellow"}]

scoreboard players remove $tick fs_tick 1
execute if score $tick fs_tick matches ..0 run scoreboard players set $tick fs_tick 20
execute if score $tick fs_tick matches 20 if score $sec fs_sec matches 1.. run scoreboard players remove $sec fs_sec 1
execute if score $tick fs_tick matches 20 if score $sec fs_sec matches 1.. run playsound minecraft:block.note_block.hat master @a[tag=firesim_in_sim] 26 -60 -11 0.8 1.2

execute if score $sec fs_sec matches ..0 run function firesim:runtime/start_fire
