# 
# Prints the credits.
# 

function lsr:menu/print_long_separator

function lsr:menu/print_title {title_text:"Credits", title_id:"credits"}

#TODO: Give translate these labels.
function lsr:menu/print_label {text:"LluísJM - Developer"}
function lsr:menu/print_label {text:"RonoCZ - Tester"}
function lsr:menu/print_label {text:"manatedough - Tester"}
function lsr:menu/print_label {text:"Ondranik - Tester"}

function lsr:menu/print_separator

function lsr:menu/print_button {button_id:"return_to_main_menu", button_text:"Return to Main Menu", command: "trigger lsr.menu"}