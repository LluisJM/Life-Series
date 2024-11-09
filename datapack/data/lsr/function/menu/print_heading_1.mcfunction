# 
# Prints a title, level 1.
# 

$tellraw @s [ \
    "\n   ", \
    { \
        "translate": "lsr.menu.$(title_id).title", \
        "fallback": "$(title_text)", "color": "gray" \
    }, \
    "\n    --" \
]