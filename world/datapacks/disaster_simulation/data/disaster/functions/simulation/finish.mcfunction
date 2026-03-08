# Return participants to lobby and end simulation.
tp @a[tag=ds_session] 75 -60 -4
tag @a remove ds_session

title @a title {"text":"Simulation Done","color":"green"}
title @a subtitle {"text":"Returned to lobby","color":"yellow"}
title @a actionbar {"text":"Simulation complete. Good job.","color":"aqua"}

# Clear any queued callbacks
function disaster:simulation/clear_schedules
