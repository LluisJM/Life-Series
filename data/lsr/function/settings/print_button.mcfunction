# 
# Prints a button with an assigned function.
# 
# @var text @var func

$tellraw @s {"text": "  $(text) >", "clickEvent": {"action": "run_command", "value": "/function lsr:$(func)"}, "color":"gray"}