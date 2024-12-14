# 
# Basic on join player config.
# 

function lsr:menu/print_long_separator

tag @s remove lsr.player
tag @s remove lsr.spectator
scoreboard players enable @s lsr.play
scoreboard players enable @s lsr.spectate

function lsr:menu/print_heading_1 {title_id:"pack", title_text:"Life Series Recreation"}

function lsr:menu/print_button {button_id:"play_game", button_text:"Play game", command:"trigger lsr.play"}
function lsr:menu/print_button {button_id:"spectate_game", button_text:"Spectate game", command:"trigger lsr.spectate"}

function lsr:menu/print_separator

execute as @a store success score @s lsr.is_op run tellraw @s ""
execute as @a[scores={lsr.is_op=1..}] run function lsr:util/check_operator_status
scoreboard players reset @a[scores={lsr.is_op=1..}] lsr.is_op