# Build all physical assets required by the thesis prototype.
function firesim:build/lobby
function firesim:build/sim_zone
function firesim:build/backup
function firesim:reset/restore_structure

tellraw @a [{"text":"[firesim] World geometry built: lobby + fire simulation zone + backup clone.","color":"aqua"}]
