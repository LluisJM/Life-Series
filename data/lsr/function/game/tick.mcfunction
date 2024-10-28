# 
# Runs every tick during the game. 
# 

execute as @a[scores={lsr.death=1..},team=lsr.red] run title @s title {"text":"You were eliminated.","color":"gray"}
execute as @a[scores={lsr.death=1..},team=lsr.red] run team join lsr.spectators @s
execute as @a[scores={lsr.death=1..},team=lsr.spectators] run gamemode spectator @s

execute as @a[scores={lsr.death=1..},team=lsr.yellow] run tag @s remove lsr.boogeyman
execute as @a[scores={lsr.death=1..},team=lsr.yellow] run tellraw @s [{"text":"","color":"gray"},"You have dropped to your ",{"text":"Last Life","color":"red"},". All alliances are severed and you are now hostile to all players. You may team with others on their Last Life if you wish."]
execute as @a[scores={lsr.death=1..},team=lsr.yellow] run team join lsr.red @s

execute as @a[scores={lsr.death=1..},team=lsr.green] run team join lsr.yellow @s

execute as @a[scores={lsr.kill=1..},tag=lsr.boogeyman] run function lsr:boogeyman/cure

#execute as @a[scores={lsr.kill=1..},team=lsr.red] run tellraw
execute as @a[scores={lsr.kill=1..},team=lsr.red] run effect give @s minecraft:regeneration 5 1 true
execute as @a[scores={lsr.kill=1..},team=lsr.red] run effect give @s minecraft:absorption 40 0 true
execute as @a[scores={lsr.kill=1..},team=lsr.red] run effect give @s minecraft:fire_resistance 5 0 true

execute as @a[scores={lsr.kill=1..},tag=lsr.boogeyman] run effect give @s minecraft:regeneration 5 1 true
execute as @a[scores={lsr.kill=1..},tag=lsr.boogeyman] run effect give @s minecraft:absorption 40 0 true
execute as @a[scores={lsr.kill=1..},tag=lsr.boogeyman] run effect give @s minecraft:fire_resistance 5 0 true

scoreboard players reset @a lsr.death
scoreboard players reset @a lsr.kill

scoreboard players reset $count.green_and_yellow lsr.io
execute as @a[team=lsr.green] run scoreboard players add $count.green_and_yellow lsr.io 1
execute as @a[team=lsr.yellow] run scoreboard players add $count.green_and_yellow lsr.io 1
scoreboard players reset $count.boogeymen lsr.io
execute as @a[tag=lsr.boogeyman] run scoreboard players add $count.boogeymen lsr.io 1

execute if score $count.green_and_yellow.max lsr.io >= $count.green_and_yellow lsr.io \
    if score $count.green_and_yellow lsr.io = $count.boogeymen lsr.io \
    run tellraw @a[tag=lsr.boogeyman] {"text":"You were cured, as there is no one for you to kill.", "color":"gray"}
execute if score $count.green_and_yellow.max lsr.io >= $count.green_and_yellow lsr.io \
    if score $count.green_and_yellow lsr.io = $count.boogeymen lsr.io \
    run execute as @a[tag=lsr.boogeyman] run function lsr:boogeyman/cure

#execute as @e[type=armor_stand,tag=c_tnt] at @s run summon tnt ~ ~ ~ {Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt}]}]}]}]}]}]}]}]}]}]}
#lsr.kill @e[type=armor_stand,tag=c_tnt]

schedule function lsr:game/tick 1t