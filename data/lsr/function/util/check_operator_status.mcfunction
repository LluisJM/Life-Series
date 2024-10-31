# 
# Used to confirm the runner player's operator permissions.
# 
# ! Tellraw on line 9  does not work.

tag @s add lsr.operator
tellraw @s {"color": "gray", "text": "Confirmed operator status"}

return run scoreboard players enable @s lsr.start_game