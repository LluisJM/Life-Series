# 
# Always runs.
# 

execute if score $force_gamemodes lsr.config matches 1 run function lsr:tick/force_gamemodes
scoreboard players enable @a[tag=lsr.operator] lsr.settings

execute if score $game_state lsr.io matches 0..1 run effect give @a[gamemode=survival] saturation 10 9 true
execute if score $game_state lsr.io matches 0..1 run effect give @a[gamemode=survival] resistance 10 9 true
execute if score $game_state lsr.io matches 0..1 run effect give @a[gamemode=survival] regeneration 10 9 true

execute if score $game_state lsr.io matches 2 run function lsr:tick/game

execute as @a[tag=!lsr.operator] store success score @s lsr.is_op run tellraw @s ""
execute as @a[scores={lsr.is_op=1..}] run function lsr:util/check_operator_status
scoreboard players reset @a[scores={lsr.is_op=1..}] lsr.is_op