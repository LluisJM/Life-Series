# 
# Handles tigger type scoreboard objectives.
# 

execute as @a[scores={lsr.play=1..}] run tag @s add lsr.player
execute as @a[scores={lsr.play=1..}] run tag @s remove lsr.spectator
execute as @a[scores={lsr.play=1..}] run scoreboard players enable @s lsr.spectate
execute as @a[scores={lsr.play=1..}] run tellraw @s ["\n",{\
    "translate": "lsr.player_config.playing", \
    "fallback": "You will be playing the game", \
    "color": "gray" \
}]
execute as @a[scores={lsr.spectate=1..}] run tag @s add lsr.spectator
execute as @a[scores={lsr.spectate=1..}] run tag @s remove lsr.player
execute as @a[scores={lsr.spectate=1..}] run scoreboard players enable @s lsr.play
execute as @a[scores={lsr.spectate=1..}] run tellraw @s ["\n",{\
    "translate": "lsr.player_config.spectating", \
    "fallback": "You will be spectating the game", \
    "color": "gray" \
}]

execute as @a[scores={lsr.settings=1..}] run function lsr:menu/settings
execute as @a[scores={lsr.menu=1..}] run function lsr:menu/main_menu

execute as @r[scores={lsr.start_game=1..}] run function lsr:game/start_game
execute as @r[scores={lsr.start_session=1..}] run function lsr:game/start_session
execute as @r[scores={lsr.choose_boogeyman=1..}] run function lsr:boogeyman/choosing_windup/start_countdown
execute as @r[scores={lsr.end_game=1..}] run function lsr:game/end

scoreboard players reset @a[scores={lsr.settings=1..}] lsr.settings
scoreboard players enable @a[tag=lsr.operator] lsr.settings

scoreboard players reset @a[scores={lsr.menu=1..}] lsr.menu
scoreboard players enable @a[tag=lsr.operator] lsr.menu

scoreboard players reset @a[scores={lsr.start_game=1..}] lsr.start_game
scoreboard players reset @a[scores={lsr.start_session=1..}] lsr.start_session
scoreboard players reset @a[scores={lsr.choose_boogeyman=1..}] lsr.choose_boogeyman
scoreboard players reset @a[scores={lsr.end_game=1..}] lsr.end_game
execute if score $game_state lsr.io matches 1..2 run scoreboard players enable @a[tag=lsr.operator] lsr.start_session
scoreboard players enable @a[tag=lsr.operator] lsr.end_game

scoreboard players reset @a[scores={lsr.play=1..}] lsr.play
scoreboard players reset @a[scores={lsr.spectate=1..}] lsr.spectate
