# 
# Starts the session. Punishes boogeymen and starts function `lsr:game/tick`
# 

tellraw @a[tag=!lsr.boogeyman] { \
    "translate": "lsr.session.start", \
    "fallback": "Session has started. Good luck!", \
    "color": "gray" \
}
tellraw @a[tag=lsr.boogeyman] { \
    "translate": "lsr.boogeyman.punish.description.p1", \
    "fallback": "You failed to kill a %1$s or %2$s name last session as the Boogeyman. As punishment, you have dropped to your %3$s. All alliances are severed and you are now hostile to all players. You may team with others on their Last Life if you wish.", \
    "color": "gray", \
    "with": [ \
        { \
            "translate": "lsr.boogeyman.punish.description.p2", \
            "fallback": "green", \
            "color": "green" \
        }, \
        { \
            "translate": "lsr.boogeyman.punish.description.p3", \
            "fallback": "yellow", \
            "color": "yellow" \
        }, \
        { \
            "translate": "lsr.boogeyman.punish.description.p4", \
            "fallback": "Last Life", \
            "color": "red" \
        } \
    ] \
}
execute as @s[tag=lsr.boogeyman] at @s run playsound minecraft:block.note_block.xylophone ambient @s ~ ~ ~ 2 0.1
team join lsr.red @a[tag=lsr.boogeyman]
tag @a remove lsr.boogeyman
function lsr:game/tick

scoreboard players enable @a[tag=lsr.operator] lsr.choose_boogeyman
scoreboard players enable @a[tag=lsr.operator] lsr.start_session
scoreboard players set $game_state lsr.io 2
execute as @a[tag=lsr.operator] run function lsr:menu/main_menu

scoreboard players reset $count.green_and_yellow.max lsr.io
execute as @a[team=lsr.green] run scoreboard players add $count.green_and_yellow.max lsr.io 1
execute as @a[team=lsr.yellow] run scoreboard players add $count.green_and_yellow.max lsr.io 1