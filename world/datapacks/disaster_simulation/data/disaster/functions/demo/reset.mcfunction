# Reset demo building from local backup lane.

gamerule doFireTick false

# Restore exact clean state
clone 50 -60 -20 74 -50 -4 -12 -60 -20 replace force

tellraw @a [{"text":"[DisasterSim] Demo building reset to clean baseline.","color":"aqua"}]
