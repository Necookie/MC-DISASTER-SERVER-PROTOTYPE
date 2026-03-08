# Earthquake pulse: high-magnitude shake effects + falling debris.
# Use multiple sound origins so the quake feels area-wide, not point-based.
execute positioned 14 -59 -24 run playsound minecraft:entity.generic.explode master @a[tag=firesim_in_sim,distance=..64] ~ ~ ~ 0.6 0.6
execute positioned 38 -59 -24 run playsound minecraft:block.deepslate.break master @a[tag=firesim_in_sim,distance=..64] ~ ~ ~ 1 0.5
execute positioned 14 -59 -8 run playsound minecraft:block.stone.break master @a[tag=firesim_in_sim,distance=..64] ~ ~ ~ 1 0.6
execute positioned 38 -59 -8 run playsound minecraft:block.stone.break master @a[tag=firesim_in_sim,distance=..64] ~ ~ ~ 0.9 0.5
execute positioned 26 -59 -16 run playsound minecraft:entity.generic.explode master @a[tag=firesim_in_sim,distance=..64] ~ ~ ~ 0.5 0.5
particle minecraft:poof 26 -58 -11 9 2 9 0.08 120 force @a[tag=firesim_in_sim]
particle minecraft:block minecraft:stone 26 -58 -11 8 2 8 0.05 90 force @a[tag=firesim_in_sim]

# Optional motion sickness layer for testing (particles hidden).
effect give @a[tag=firesim_in_sim] minecraft:nausea 1 1 true

# Lateral camera/body shake by alternating offsets every pulse.
scoreboard players operation $tmp fs_math = $tick fs_tick
scoreboard players operation $tmp fs_math %= $two fs_const
execute as @a[tag=firesim_in_sim] at @s if score $tmp fs_math matches 0 run tp @s ~0.25 ~ ~-0.10
execute as @a[tag=firesim_in_sim] at @s if score $tmp fs_math matches 1 run tp @s ~-0.25 ~ ~0.10
execute as @a[tag=firesim_in_sim] at @s if score $tmp fs_math matches 0 run tp @s ~0.20 ~ ~0.25
execute as @a[tag=firesim_in_sim] at @s if score $tmp fs_math matches 1 run tp @s ~-0.20 ~ ~-0.25

# Heavy falling debris waves (tagged for cleanup and damaging on hit).
summon minecraft:falling_block 16 -55 -23 {Tags:["firesim_quake_debris"],BlockState:{Name:"minecraft:stone_bricks"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtAmount:8.0f,FallHurtMax:40}
summon minecraft:falling_block 22 -55 -17 {Tags:["firesim_quake_debris"],BlockState:{Name:"minecraft:cobblestone"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtAmount:8.0f,FallHurtMax:40}
summon minecraft:falling_block 30 -55 -13 {Tags:["firesim_quake_debris"],BlockState:{Name:"minecraft:stone"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtAmount:8.0f,FallHurtMax:40}
summon minecraft:falling_block 36 -55 -21 {Tags:["firesim_quake_debris"],BlockState:{Name:"minecraft:deepslate"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtAmount:8.0f,FallHurtMax:40}
summon minecraft:falling_block 26 -55 -9 {Tags:["firesim_quake_debris"],BlockState:{Name:"minecraft:stone_bricks"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtAmount:8.0f,FallHurtMax:40}
summon minecraft:falling_block 19 -55 -11 {Tags:["firesim_quake_debris"],BlockState:{Name:"minecraft:gravel"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtAmount:8.0f,FallHurtMax:40}
summon minecraft:falling_block 33 -55 -18 {Tags:["firesim_quake_debris"],BlockState:{Name:"minecraft:gravel"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtAmount:8.0f,FallHurtMax:40}
summon minecraft:falling_block 13 -55 -25 {Tags:["firesim_quake_debris"],BlockState:{Name:"minecraft:stone"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtAmount:10.0f,FallHurtMax:50}
summon minecraft:falling_block 39 -55 -25 {Tags:["firesim_quake_debris"],BlockState:{Name:"minecraft:stone_bricks"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtAmount:10.0f,FallHurtMax:50}
summon minecraft:falling_block 14 -55 -8 {Tags:["firesim_quake_debris"],BlockState:{Name:"minecraft:deepslate"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtAmount:10.0f,FallHurtMax:50}
summon minecraft:falling_block 38 -55 -8 {Tags:["firesim_quake_debris"],BlockState:{Name:"minecraft:cobblestone"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtAmount:10.0f,FallHurtMax:50}
summon minecraft:falling_block 26 -55 -24 {Tags:["firesim_quake_debris"],BlockState:{Name:"minecraft:gravel"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtAmount:10.0f,FallHurtMax:50}
