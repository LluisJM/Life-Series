# 
# Starts the game. Resets player healt, lives and other scoreboards.
# 

execute as @a[tag=lsr.player] run function lsr:reset_player
execute as @a[tag=lsr.spectator] run function lsr:util/player_spectate

scoreboard players reset * lsr.play
scoreboard players reset * lsr.spectate

#tellraw @a [{"text":"","color":"white"},"The datapack set-up. When you want to choose a lsr.boogeyman, execute ",{"text":"this command","color":"blue","clickEvent":{"action":"suggest_command","value":"/function lsr:choose_lsr.boogeyman"}},". "]

recipe take @a minecraft:tnt
recipe take @a minecraft:name_tag
recipe take @a minecraft:saddle
recipe give @a minecraft:tnt
recipe give @a minecraft:name_tag
recipe give @a minecraft:saddle

tag @a remove lsr.boogeyman

time set 0t
effect clear @a
effect give @a minecraft:regeneration 2 9 true
effect give @a minecraft:saturation 2 9 true


scoreboard players reset $count.green_and_yellow.max lsr.io
execute as @a[team=lsr.green] run scoreboard players add $count.green_and_yellow.max lsr.io 1
execute as @a[team=lsr.yellow] run scoreboard players add $count.green_and_yellow.max lsr.io 1

scoreboard players enable @a[tag=lsr.operator] lsr.start_session
scoreboard players set $game_state lsr.io 1
execute as @a[tag=lsr.operator] run function lsr:menu/main_menu