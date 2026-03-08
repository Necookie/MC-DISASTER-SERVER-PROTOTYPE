# Progressive structural failure for higher-intensity earthquake visuals.

# Early phase (sec 45..34): windows/wall panels crack and fail.
execute if score $sec fs_sec matches 34..45 run fill 10 -58 -25 10 -57 -21 air replace glass_pane
execute if score $sec fs_sec matches 34..45 run fill 42 -58 -17 42 -57 -13 air replace glass_pane
execute if score $sec fs_sec matches 34..45 run fill 20 -58 -28 23 -57 -28 air replace spruce_planks
execute if score $sec fs_sec matches 34..45 run fill 29 -58 6 32 -57 6 air replace spruce_planks

# Mid phase (sec 33..20): chunks of wall and roof collapse.
execute if score $sec fs_sec matches 20..33 run fill 10 -59 -22 10 -55 -20 air
execute if score $sec fs_sec matches 20..33 run fill 42 -59 -10 42 -55 -8 air
execute if score $sec fs_sec matches 20..33 run fill 24 -54 -16 28 -54 -12 air
execute if score $sec fs_sec matches 20..33 run fill 14 -54 -24 18 -54 -20 air
execute if score $sec fs_sec matches 20..33 run fill 34 -54 -12 38 -54 -8 air

# Late phase (sec 19..1): heavier partial collapse.
execute if score $sec fs_sec matches 1..19 run fill 22 -54 -22 30 -54 -8 air
execute if score $sec fs_sec matches 1..19 run fill 23 -59 -27 23 -56 -23 air
execute if score $sec fs_sec matches 1..19 run fill 29 -59 -7 29 -56 -3 air
execute if score $sec fs_sec matches 1..19 run fill 14 -59 -24 18 -58 -22 air
execute if score $sec fs_sec matches 1..19 run fill 34 -59 -12 38 -58 -10 air
