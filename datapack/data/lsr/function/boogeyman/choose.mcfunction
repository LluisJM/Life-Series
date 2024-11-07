# 
# This function runs after the boogeyman windup. It chooses and shows a title to the boogeyman.
# 

tag @r[team=!lsr.red,team=!,tag=!lsr.boogeyman] add lsr.boogeyman
title @a times 0.2s 3s 1s
title @a[tag=lsr.boogeyman] title {\
    "translate": "lsr.boogeyman.choose.the_boogeyman.title", \
    "fallback": "The Boogeyman", \
    "color":"red" \
}
execute as @a[tag=lsr.boogeyman] at @s run playsound minecraft:block.trial_spawner.spawn_mob master @s ~ ~ ~ 1 0.3
execute as @a[tag=lsr.boogeyman] at @s run playsound minecraft:event.mob_effect.trial_omen master @s ~ ~ ~ 1 0.5
#execute as @a[tag=lsr.boogeyman] at @s run playsound minecraft:block.trial_spawner.ambient_ominous master @s ~ ~ ~ 0.5 0.7
tellraw @a[tag=lsr.boogeyman] { \
    "translate": "lsr.boogeyman.choose.the_boogeyman.description.p1", \
    "fallback": "You are the Boogeyman. You must by any means necessary kill a %1$s or %2$s name by direct action to be cured of the curse. If you fail, next session you will become a %3$s name. All loyalties and friendships are removed while you are the Boogeyman.", \
    "color": "gray", \
    "with": [ \
        { \
            "translate": "lsr.boogeyman.choose.the_boogeyman.description.p2", \
            "fallback": "green", \
            "color": "green" \
        }, \
        { \
            "translate": "lsr.boogeyman.choose.the_boogeyman.description.p3", \
            "fallback": "yellow", \
            "color": "yellow" \
        }, \
        { \
            "translate": "lsr.boogeyman.choose.the_boogeyman.description.p4", \
            "fallback": "red", \
            "color": "red" \
        } \
    ] \
}
tellraw @a[tag=lsr.boogeyman] { \
    "translate": "lsr.boogeyman.choose.the_boogeyman.description.p5", \
    "fallback": "If you don't get automatically cured when you perform a kill, please notify an operator.", \
    "color": "gray" \
}
title @a[tag=!lsr.boogeyman] title {\
    "translate": "lsr.boogeyman.choose.not_the_boogeyman.title", \
    "fallback": "NOT the Boogeyman", \
    "color":"green" \
}
execute as @a[tag=!lsr.boogeyman] at @s run playsound minecraft:block.note_block.xylophone ambient @s ~ ~ ~ 2 1.5
execute as @a[tag=!lsr.boogeyman] at @s run playsound minecraft:block.note_block.xylophone ambient @s ~ ~ ~ 2 2
execute as @a[tag=!lsr.boogeyman] at @s run playsound minecraft:block.note_block.xylophone ambient @s ~ ~ ~ 2 1.1
#execute as @a[tag=!lsr.boogeyman] at @s run playsound minecraft:block.trial_spawner.ambient_ominous master @s ~ ~ ~ 1 2
tellraw @a[tag=!lsr.boogeyman] [{"text":"","color":"gray"},"You are NOT the Boogeyman. The Boogeyman needs, by any means, lsr.kill a ",{"text":"green","color":"green"}," or ",{"text":"yellow","color":"yellow"}," name by direct action to be cured of the curse. All loyalties and friendships are removed while they are is the Boogeyman. Beware of them!"]
tellraw @a[tag=!lsr.boogeyman] { \
    "translate": "lsr.boogeyman.choose.not_the_boogeyman.description.p1", \
    "fallback": "You are NOT the Boogeyman. The Boogeyman needs, by any means, lsr.kill a %1$s or %2$s name by direct action to be cured of the curse. All loyalties and friendships are removed while they are the Boogeyman. Beware of them!", \
    "color": "gray", \
    "with": [ \
        { \
            "translate": "lsr.boogeyman.choose.not_the_boogeyman.description.p2", \
            "fallback": "green", \
            "color": "green" \
        }, \
        { \
            "translate": "lsr.boogeyman.choose.not_the_boogeyman.description.p3", \
            "fallback": "yellow", \
            "color": "yellow" \
        } \
    ] \
}

scoreboard players enable @a[tag=lsr.operator] lsr.choose_boogeyman

scoreboard players reset $count.green_and_yellow.max lsr.io
execute as @a[team=lsr.green] run scoreboard players add $count.green_and_yellow.max lsr.io 1
execute as @a[team=lsr.yellow] run scoreboard players add $count.green_and_yellow.max lsr.io 1