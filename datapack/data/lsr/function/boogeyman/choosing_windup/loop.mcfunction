# 
# This function runs during the windup when the boogeyman is chosen (each time a number shows)
# 
#TODO: Add pitch to the sound (minecraft:ui.button.click)

title @a title {\
    "color": "red", \
    "score": {\
        "name": "$lsr.boogeyman/choosing_windup", \
        "objective": "lsr.io"\
    }\
}
scoreboard players remove $lsr.boogeyman/choosing_windup lsr.io 1

execute as @a at @s unless score $lsr.boogeyman/choosing_windup lsr.io matches 1..5 run playsound minecraft:ui.button.click master @s ~ ~1.5 ~ 1 1.4 0
execute as @a at @s if score $lsr.boogeyman/choosing_windup lsr.io matches 5 run playsound minecraft:ui.button.click master @s ~ ~1.5 ~ 1 1.5 0
execute as @a at @s if score $lsr.boogeyman/choosing_windup lsr.io matches 4 run playsound minecraft:ui.button.click master @s ~ ~1.5 ~ 1 1.6 0
execute as @a at @s if score $lsr.boogeyman/choosing_windup lsr.io matches 3 run playsound minecraft:ui.button.click master @s ~ ~1.5 ~ 1 1.8 0
execute as @a at @s if score $lsr.boogeyman/choosing_windup lsr.io matches 2 run playsound minecraft:ui.button.click master @s ~ ~1.5 ~ 1 1.9 0
execute as @a at @s if score $lsr.boogeyman/choosing_windup lsr.io matches 1 run playsound minecraft:ui.button.click master @s ~ ~1.5 ~ 1 2.0 0

## Call count again.
execute unless score $lsr.boogeyman/choosing_windup lsr.io matches ..0 run schedule function lsr:boogeyman/choosing_windup/loop 1s
execute if score $lsr.boogeyman/choosing_windup lsr.io matches ..0 run schedule function lsr:boogeyman/choosing_windup/start 1s