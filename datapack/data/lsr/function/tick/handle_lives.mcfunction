# 
# Handles lives for players. 
# 

execute as @a[scores={lsr.death=1..},team=lsr.red] run title @s title { \
    "translate": "lsr.misc.eliminated.title", \
    "fallback":"You have been eliminated", \
    "color":"gray" \
}
execute as @a[scores={lsr.death=1..},team=lsr.red] run function lsr:util/player_spectate

execute as @a[scores={lsr.death=1..},team=lsr.yellow] run tag @s remove lsr.boogeyman
execute as @a[scores={lsr.death=1..},team=lsr.yellow] run tellraw @s { \
    "translate": "lsr.misc.last_life.p1", \
    "fallback": "You have dropped to your %s. All alliances are severed and you are now hostile to all players. You may team with others on their Last Life if you wish.", \
    "color":"gray", \
    "with": [ \
        { \
            "translate": "lsr.misc.last_life.p2", \
            "fallback": "Last Life", \
            "color": "red" \
        } \
    ] \
}
execute as @a[scores={lsr.death=1..},team=lsr.yellow] run team join lsr.red @s

execute as @a[scores={lsr.death=1..},team=lsr.green] run team join lsr.yellow @s

execute as @a[scores={lsr.death=1..},team=lsr.yellow] run scoreboard players remove $count.green_and_yellow.max lsr.io 1
execute as @a[scores={lsr.death=1..},team=lsr.green] run scoreboard players remove $count.green_and_yellow.max lsr.io 1