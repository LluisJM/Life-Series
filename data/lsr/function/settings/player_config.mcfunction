# 
# Basic on join player config.
# 

tag @s remove lsr.player
tag @s remove lsr.spectator
scoreboard players enable @s lsr.play
scoreboard players enable @s lsr.spectate

tellraw @s {\
    "color": "gray", \
    "translate": "lsr.player_config.welcome", \
    "fallback": "Welcome to Life Series Recreation!", \
    "with": [\
        {\
            "color": "gray", \
            "translate": "lsr.player_config.operator_status_check.p1", \
            "fallback": "here", \
            "underlined": true, \
            "clickEvent": { \
                "action": "run_command", \
                "value": "/function lsr:util/check_operator_status" \
            } \
        } \
    ] \
}

tellraw @s {\
    "color": "gray", \
    "translate": "lsr.player_config.operator_status_check", \
    "fallback": "Are you an operator? Click %s", \
    "with": [\
        {\
            "color": "gray", \
            "translate": "lsr.player_config.operator_status_check.p1", \
            "fallback": "here", \
            "underlined": true, \
            "clickEvent": { \
                "action": "run_command", \
                "value": "/function lsr:util/check_operator_status" \
            } \
        } \
    ] \
}
tellraw @s {\
    "color": "gray", \
    "translate": "lsr.player_config.play_or_spectate", \
    "fallback": "Are you going to %1$s or %2$s the game?", \
    "with": [\
        {\
            "color": "gray", \
            "translate": "lsr.player_config.play_or_spectate.p1", \
            "fallback": "play", \
            "underlined": true, \
            "clickEvent": { \
                "action": "run_command", \
                "value": "/trigger lsr.play" \
            } \
        }, \
        {\
            "color": "gray", \
            "translate": "lsr.player_config.play_or_spectate.p2", \
            "fallback": "spectate", \
            "underlined": true, \
            "clickEvent": { \
                "action": "run_command", \
                "value": "/trigger lsr.spectate" \
            } \
        } \
    ]\
}