# 
# Prints a title
# 
# @arg title

$tellraw @s [ \
    "\n   ", \
    { \
        "translate": "lsr.menu.$(title_id).title", \
        "fallback": "$(title_text)", "color": "gray" \
    }, \
    "\n    --" \
]