# 
# General settings
# 

function lsr:menu/print_long_separator
function lsr:menu/print_title {title:"Settings"}

function lsr:menu/print_setting {id:'force_gamemodes', page: 'settings'}
function lsr:menu/print_setting {id:'apply_kill_buffs.red', page: 'settings'}
function lsr:menu/print_setting {id:'apply_kill_buffs.boogeyman', page: 'settings'}

function lsr:menu/print_separator

function lsr:menu/print_button {text:"Reset all settings to default", command:"function lsr:settings/reset_game_config"}

function lsr:menu/print_separator

function lsr:menu/print_button {text:"Go back to Main Menu", command:"trigger lsr.menu"}

function lsr:menu/print_separator