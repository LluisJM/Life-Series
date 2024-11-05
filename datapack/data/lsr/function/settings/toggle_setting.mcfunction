# 
# Toggles a setting and prints it again.
# 

$scoreboard players add $$(id) lsr.config 1
$execute if score $$(id) lsr.config matches 2.. run scoreboard players set $$(id) lsr.config 0

$function lsr:menu/$(page)