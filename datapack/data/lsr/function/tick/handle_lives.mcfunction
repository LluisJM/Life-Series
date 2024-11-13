# 
# Handles lives for players. 
# 

scoreboard players remove @a[scores={lsr.death=1..}] lsr.lives 1


execute as @a[scores={lsr.lives=4..}] run team join lsr.dark_green @s

execute as @a[scores={lsr.lives=3}] run team join lsr.green @s

execute as @a[scores={lsr.lives=2}] run team join lsr.yellow @s

execute as @a[scores={lsr.lives=1}] run tag @s remove lsr.boogeyman
execute as @a[scores={lsr.lives=1,lsr.death=1..}] run tellraw @s { \
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
execute as @a[scores={lsr.lives=1}] run team join lsr.red @s

execute as @a[scores={lsr.lives=..0,lsr.death=1..}] run title @s title { \
    "translate": "lsr.misc.eliminated.title", \
    "fallback":"You have been eliminated", \
    "color":"gray" \
}
execute as @a[scores={lsr.lives=..0}] run function lsr:util/player_spectate

execute as @a[scores={lsr.death=1..},predicate=lsr:is_green_or_yellow] run scoreboard players remove $count.green_and_yellow.max lsr.io 1

scoreboard players reset @a[scores={lsr.death=1..}] lsr.death