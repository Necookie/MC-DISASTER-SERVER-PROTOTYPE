# Idle state: start simulation only when button is physically pressed.
execute if score $state fs_state matches 0 if block 0 65 4 stone_button[powered=true] run function firesim:runtime/start_simulation
