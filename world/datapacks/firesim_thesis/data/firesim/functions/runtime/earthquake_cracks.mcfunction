# Progressive floor cracking by quake phase (restored at end by backup clone).

# Phase 1 (sec 45..35): visible crack lines.
execute if score $sec fs_sec matches 35..45 run setblock 24 -60 -22 cracked_stone_bricks
execute if score $sec fs_sec matches 35..45 run setblock 25 -60 -21 cracked_stone_bricks
execute if score $sec fs_sec matches 35..45 run setblock 26 -60 -20 cracked_stone_bricks
execute if score $sec fs_sec matches 35..45 run setblock 27 -60 -19 cracked_stone_bricks
execute if score $sec fs_sec matches 35..45 run setblock 28 -60 -18 cracked_stone_bricks
execute if score $sec fs_sec matches 35..45 run setblock 29 -60 -17 cracked_stone_bricks

# Phase 2 (sec 34..20): deeper fractures and unstable floor.
execute if score $sec fs_sec matches 20..34 run setblock 23 -60 -16 cracked_stone_bricks
execute if score $sec fs_sec matches 20..34 run setblock 24 -60 -15 gravel
execute if score $sec fs_sec matches 20..34 run setblock 25 -60 -14 cracked_stone_bricks
execute if score $sec fs_sec matches 20..34 run setblock 26 -60 -13 gravel
execute if score $sec fs_sec matches 20..34 run setblock 27 -60 -12 cracked_stone_bricks
execute if score $sec fs_sec matches 20..34 run setblock 28 -60 -11 gravel
execute if score $sec fs_sec matches 20..34 run setblock 29 -60 -10 cracked_stone_bricks
execute if score $sec fs_sec matches 20..34 run setblock 30 -60 -9 gravel

# Phase 3 (sec 19..1): floor breaks open into hazardous holes.
execute if score $sec fs_sec matches 1..19 run setblock 24 -60 -18 air
execute if score $sec fs_sec matches 1..19 run setblock 25 -60 -17 air
execute if score $sec fs_sec matches 1..19 run setblock 26 -60 -16 air
execute if score $sec fs_sec matches 1..19 run setblock 27 -60 -15 air
execute if score $sec fs_sec matches 1..19 run setblock 28 -60 -14 air
execute if score $sec fs_sec matches 1..19 run setblock 29 -60 -13 air
execute if score $sec fs_sec matches 1..19 run setblock 30 -60 -12 air
