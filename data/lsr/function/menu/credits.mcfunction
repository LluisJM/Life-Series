# 
# Prints the credits.
# 

function lsr:menu/print_long_separator

function lsr:menu/print_title {title:"Credits"}

function lsr:menu/print_label {text:"LluísJM - Developer"}
function lsr:menu/print_label {text:"RonoCZ - Tester"}
function lsr:menu/print_label {text:"manatedough - Tester"}
function lsr:menu/print_label {text:"Ondranik - Tester"}

function lsr:menu/print_separator

function lsr:menu/print_button {text:"Return to Main Menu", command: "trigger lsr.menu"}