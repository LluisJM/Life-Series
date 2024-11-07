# 
# Used to confirm the runner player's operator permissions.
# 

tag @s add lsr.operator
tellraw @s { \
    "translate": "lsr.util.check_operator_status.p1", \
    "fallback": "Confirmed operator status", \
    "color": "gray" \
}
tellraw @s { \
    "translate": "lsr.util.check_operator_status.p2", \
    "fallback": "Run %s to open the Main Menu", \
    "color": "gray", \
    "with": [ \
        { \
            "text": "/trigger lsr.menu", \
            "color": "dark_gray", \
            "clickEvent": { \
                "action": "suggest_command", \
                "value": "/trigger lsr.menu" \
            } \
        } \
    ] \
}

return run scoreboard players enable @s lsr.start_game