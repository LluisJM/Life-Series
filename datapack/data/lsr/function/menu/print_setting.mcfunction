# 
# Used to display a toggable settings.
# 
# @arg id @arg page

$execute if score $$(id) lsr.config matches 1 run tellraw @s [{"text": " [✔] ", "color": "green", "hoverEvent":{"action": "show_text", "contents": "Click to toggle"}, "clickEvent": {"action": "run_command", "value":"/function lsr:settings/toggle_setting {id:'$(id)',page:'$(page)'}"}}, "$(id)"]
$execute if score $$(id) lsr.config matches 0 run tellraw @s [{"text": " [✖] ", "color": "red", "hoverEvent":{"action": "show_text", "contents": "Click to toggle"}, "clickEvent": {"action": "run_command", "value":"/function lsr:settings/toggle_setting {id:'$(id)',page:'$(page)'}"}}, "$(id)"]

$execute unless score $$(id) lsr.config matches 0..1 run return fail