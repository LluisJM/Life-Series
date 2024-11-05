# 
# Prints a button with an assigned function.
# 
# @arg button_id @arg button_text @arg command

$tellraw @s [ \
    "  ", \
    { \
        "translate": "lsr.menu.button.$(button_id)", \
        "fallback": "$(button_text)", \
        "clickEvent": { \
            "action": "run_command", \
            "value": "/$(command)" \
        }, \
        "color":"gray" \
    }, \
    " >" \
]