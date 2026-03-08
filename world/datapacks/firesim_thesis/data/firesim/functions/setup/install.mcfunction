# One-time install entry point.
# Creates/normalizes runtime state, builds lobby + simulation arena, and primes backup clone data.
function firesim:setup/reset_system
function firesim:build/all
setworldspawn 0 65 0

# Teleport online players to the lobby for immediate testing.
tp @a 0.5 65 0.5 180 0

tellraw @a [{"text":"[firesim] Install complete. Press the lobby button to start the simulation.","color":"green"}]
