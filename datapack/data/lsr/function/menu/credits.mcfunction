# 
# Prints the credits.
# 

function lsr:menu/print_long_separator

function lsr:menu/print_heading_1 {title_text:"Credits", title_id:"credits"}

#TODO: Give translate these labels.
function lsr:menu/print_heading_2 {title_text:"Developers", title_id:"credits.developers"}
function lsr:menu/print_label {text:"LluísJM"}
function lsr:menu/print_heading_2 {title_text:"Translators", title_id:"credits.translators"}
function lsr:menu/print_label {text:"gerritdebal"}
function lsr:menu/print_label {text:"LluísJM"}
function lsr:menu/print_label {text:"manatedough"}
function lsr:menu/print_label {text:"Noukum"}
function lsr:menu/print_label {text:"Ondranik"}
function lsr:menu/print_heading_2 {title_text:"Testers", title_id:"credits.testers"}
function lsr:menu/print_label {text:"manatedough"}
function lsr:menu/print_label {text:"Ondranik"}
function lsr:menu/print_label {text:"RonoCZ"}

function lsr:menu/print_separator

function lsr:menu/print_button {button_id:"return_to_main_menu", button_text:"Return to Main Menu", command: "trigger lsr.menu"}