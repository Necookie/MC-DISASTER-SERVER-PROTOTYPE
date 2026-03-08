# Do nothing while setup is incomplete.
execute unless entity @e[type=minecraft:marker,tag=ds_lobby_spawn,limit=1] run return 1
execute unless entity @e[type=minecraft:marker,tag=ds_sim_spawn,limit=1] run return 1
execute unless entity @e[type=minecraft:marker,tag=ds_sim_min,limit=1] run return 1
execute unless entity @e[type=minecraft:marker,tag=ds_ignite,limit=1] run return 1
