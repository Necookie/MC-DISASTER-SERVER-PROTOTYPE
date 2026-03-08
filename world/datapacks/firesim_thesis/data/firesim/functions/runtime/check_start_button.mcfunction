# Idle state: start simulation only when a lobby button is physically pressed.
execute if score $state fs_state matches 0 if block 0 65 4 stone_button[powered=true] run function firesim:runtime/start_fire_simulation
execute if score $state fs_state matches 0 if block 2 65 4 stone_button[powered=true] run function firesim:runtime/start_earthquake_simulation
