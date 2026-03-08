# Fire phase begins.
gamerule doFireTick true

# Ignite multiple points around simulation center for spread.
setblock 27 -59 -12 fire
setblock 25 -59 -10 fire
setblock 29 -59 -14 fire
setblock 23 -59 -12 fire
setblock 31 -59 -12 fire

title @a[tag=ds_session] title {"text":"Evacuate!","color":"red"}
title @a[tag=ds_session] subtitle {"text":"Fire spreading for 30 seconds","color":"gold"}
title @a[tag=ds_session] actionbar {"text":"Fire is active: survive for 30 seconds","color":"red"}

# End simulation after 30 seconds
schedule function disaster:simulation/finish 30s replace
