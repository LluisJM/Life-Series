# 
# Used to confirm the runner player's operator permissions.
# 
# ! Tellraw on line 9  does not work.

tag @s add lsr.operator
tellraw @s {"color": "gray", "text": "Confirmed operator status"}
tellraw @s {"color": "gray", "text": "Run /trigger lsr.menu to open the Main Menu", "clickEvent": {"action": "suggest_command", "value": "/trigger lsr.menu"}}

return run scoreboard players enable @s lsr.start_game