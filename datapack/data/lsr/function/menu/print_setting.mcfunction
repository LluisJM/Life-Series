# 
# Used to display a toggable settings.
# 
# @arg setting_name @arg setting_id @arg page

$execute if score $$(setting_id) lsr.config matches 1 run tellraw @s [ \
    { \
        "text": " [✔] ", \
        "color": "green", \
        "hoverEvent": { \
            "action": "show_text", \
            "contents": { \
                "translate": "lsr.setting.toggle.tooltip", \
                "fallback": "Click to toggle" \
            } \
        }, \
        "clickEvent": { \
            "action": "run_command", \
            "value":"/function lsr:settings/toggle_setting {setting_id:'$(setting_id)',page:'$(page)'}"\
        } \
    }, \
    { \
        "translate": "lsr.setting.$(setting_id)", \
        "fallback": "$(setting_name)", \
        "color": "green" \
    } \
]
$execute if score $$(setting_id) lsr.config matches 0 run tellraw @s [ \
    { \
        "text": " [✖] ", \
        "color": "red", \
        "hoverEvent": { \
            "action": "show_text", \
            "contents": { \
                "translate": "lsr.setting.toggle.tooltip", \
                "fallback": "Click to toggle" \
            } \
        }, \
        "clickEvent": { \
            "action": "run_command", \
            "value":"/function lsr:settings/toggle_setting {setting_id:'$(setting_id)',page:'$(page)'}"\
        } \
    }, \
    { \
        "translate": "lsr.setting.$(setting_id)", \
        "fallback": "$(setting_name)", \
        "color": "red" \
    } \
]

$execute unless score $$(setting_id) lsr.config matches 0..1 run return fail