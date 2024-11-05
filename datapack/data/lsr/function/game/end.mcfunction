# 
# Ends the game forcefully.
# 

scoreboard players reset * lsr.start_game
scoreboard players reset * lsr.start_session
scoreboard players reset * lsr.choose_boogeyman

schedule clear lsr:game/tick
scoreboard players enable @a[tag=lsr.operator] lsr.start_game
tag @a[tag=lsr.boogeyman] remove lsr.boogeyman

scoreboard players set $game_state lsr.io 0
execute as @a[tag=lsr.operator] run function lsr:menu/main_menu

tag @a[tag=lsr.player] remove lsr.player
tag @a[tag=lsr.spectator] remove lsr.spectator
gamemode survival @a[gamemode=spectator]