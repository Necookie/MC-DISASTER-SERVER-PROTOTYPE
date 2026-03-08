# Firesim main tick dispatcher.
function firesim:runtime/check_start_button
function firesim:runtime/lobby_ui_tick

# Run the active state machine branch.
execute if score $state fs_state matches 1 run function firesim:runtime/prefire_tick
execute if score $state fs_state matches 2 run function firesim:runtime/active_tick
execute if score $state fs_state matches 3 run function firesim:runtime/cooldown_tick
