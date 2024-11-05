# 
# Prints a button with an assigned function.
# 
# @var text @var command

$tellraw @s {"text": "  $(text) >", "clickEvent": {"action": "run_command", "value": "/$(command)"}, "color":"gray"}