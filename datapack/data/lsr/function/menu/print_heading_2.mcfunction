# 
# Prints a title, level 2.
# 

$tellraw @s ["\n - ", {"translate": "$(title_id)", "fallback": "lsr.menu.$(title_text).title", "color": "gray"}," -"]