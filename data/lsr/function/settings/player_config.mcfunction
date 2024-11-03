# 
# Basic on join player config.
# 

function lsr:menu/print_separator

tag @s remove lsr.player
tag @s remove lsr.spectator
scoreboard players enable @s lsr.play
scoreboard players enable @s lsr.spectate

function lsr:menu/print_title {title:"Life Series Recreation"}

function lsr:menu/print_button {text:"Play game", command:"trigger lsr.play"}
function lsr:menu/print_button {text:"Spectate game", command:"trigger lsr.spectate"}
tellraw @s "\n"
function lsr:menu/print_button {text:"Are you and operator?", command:"function lsr:util/check_operator_status"}