# 
# General settings
# 

function lsr:util/print_separator
function lsr:util/print_title {title:"Settings"}

function lsr:settings/print_setting {id:'force_gamemodes', page: 'generic'}
function lsr:settings/print_setting {id:'apply_kill_buffs.red', page: 'generic'}
function lsr:settings/print_setting {id:'apply_kill_buffs.boogeyman', page: 'generic'}

function lsr:settings/print_button {text:"Reset Settings to Default", func:"settings/reset_game_config"}