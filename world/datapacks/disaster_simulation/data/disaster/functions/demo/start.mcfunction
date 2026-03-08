# Start a simple damage/fire simulation on the demo building.

gamerule doFireTick true

# Structural damage
fill -3 -59 -12 3 -55 -8 air
fill -12 -59 -20 -12 -55 -10 air
fill 12 -59 -14 12 -54 -6 air

# Ignite points
setblock -6 -59 -9 fire
setblock 0 -59 -10 fire
setblock 7 -59 -11 fire
setblock -2 -50 -13 fire
setblock 3 -50 -9 fire

tellraw @a [{"text":"[DisasterSim] Simulation started: building is now in fire/damage state.","color":"gold"}]
