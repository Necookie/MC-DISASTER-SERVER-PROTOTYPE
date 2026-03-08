# Detect players currently in lobby bounds and show welcome title once per entry.
tag @a remove firesim_in_lobby
tag @a[x=-12,y=63,z=-12,dx=24,dy=12,dz=24] add firesim_in_lobby

execute as @a[tag=firesim_in_lobby,tag=!firesim_lobby_notified] run title @s title {"text":"Welcome to the Lobby","color":"gold","bold":true}
execute as @a[tag=firesim_in_lobby,tag=!firesim_lobby_notified] run title @s subtitle {"text":"Fire Simulation","color":"red"}
tag @a[tag=firesim_in_lobby,tag=!firesim_lobby_notified] add firesim_lobby_notified

# Allow title replay on next lobby entry.
tag @a[tag=!firesim_in_lobby] remove firesim_lobby_notified
