# 
# Toggles a setting and prints it again.
# 

$scoreboard players add $$(setting_id) lsr.config 1
$execute if score $$(setting_id) lsr.config matches 2.. run scoreboard players set $$(setting_id) lsr.config 0

$function lsr:menu/$(page)