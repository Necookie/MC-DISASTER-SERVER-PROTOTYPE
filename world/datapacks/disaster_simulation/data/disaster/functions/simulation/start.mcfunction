# Starts simulation from lobby.
# Lobby: 75 -60 -4
# Simulation: 27 -60 -12

# Clear previous run state
function disaster:simulation/clear_schedules
tag @a remove ds_session

# Select participants near lobby and teleport to simulation zone
execute positioned 75 -60 -4 run tag @a[distance=..10,gamemode=!spectator] add ds_session
tp @a[tag=ds_session] 27 -60 -12

title @a[tag=ds_session] title {"text":"Simulation Started","color":"gold"}
title @a[tag=ds_session] subtitle {"text":"Prepare for fire drill","color":"yellow"}
function disaster:simulation/countdown_5

# Fire starts after 5 seconds
schedule function disaster:simulation/fire_start 5s replace
