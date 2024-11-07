# 
# Prints the main menu.
# 

function lsr:menu/print_long_separator

function lsr:menu/print_title {title_id: "main_menu", title_text:"Main Menu"}

execute unless score $game_state lsr.io matches 1..2 run function lsr:menu/print_button {button_id:"start_game", button_text:"Start game", command:"trigger lsr.start_game"}
execute if score $game_state lsr.io matches 1 run function lsr:menu/print_button {button_id:"start_session", button_text:"Start session", command:"trigger lsr.start_session"}
execute if score $game_state lsr.io matches 2 run function lsr:menu/print_button {button_id:"start_new_session", button_text:"Start new session", command:"trigger lsr.start_session"}
execute if score $game_state lsr.io matches 2 run function lsr:menu/print_button {button_id:"choose_boogeyman", button_text:"Choose boogeyman", command:"trigger lsr.choose_boogeyman"}
execute unless score $game_state lsr.io matches 2 run function lsr:menu/print_separator

function lsr:menu/print_button {button_id: "settings", button_text:"Settings", command:"trigger lsr.settings"}

function lsr:menu/print_separator

execute if score $game_state lsr.io matches 1..2 run function lsr:menu/print_button {button_id:"stop_game", button_text:"Stop game", command:"trigger lsr.end_game"}
execute unless score $game_state lsr.io matches 1..2 run function lsr:menu/print_separator

function lsr:menu/print_separator
function lsr:menu/print_button {button_id:"credits", button_text:"Credits", command:"function lsr:menu/credits"}
function lsr:menu/print_separator