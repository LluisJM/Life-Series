execute as @a[scores={lsr.death=1..},team=lsr.red] run title @s title {"text":"You were eliminated.","color":"gray"}
execute as @a[scores={lsr.death=1..},team=lsr.red] run team join lsr.spectators @s
execute as @a[scores={lsr.death=1..},team=lsr.spectators] run gamemode spectator @s

execute as @a[scores={lsr.death=1..},team=lsr.yellow] run tag @s remove boogeyman
execute as @a[scores={lsr.death=1..},team=lsr.yellow] run tellraw @s [{"text":"","color":"gray"},"You have dropped to your ",{"text":"Last Life","color":"red"},". All alliances are severed and you are now hostile to all players. You may team with others on their Last Life if you wish."]
execute as @a[scores={lsr.death=1..},team=lsr.yellow] run team join lsr.red @s

execute as @a[scores={lsr.death=1..},team=lsr.green] run team join lsr.yellow @s

execute as @a[scores={lsr.kill=1..},tag=boogeyman] run function lsr:cure_boogeyman

#execute as @a[scores={lsr.kill=1..},team=lsr.red] run tellraw
execute as @a[scores={lsr.kill=1..},team=lsr.red] run effect give @s minecraft:regeneration 5 1 true
execute as @a[scores={lsr.kill=1..},team=lsr.red] run effect give @s minecraft:absorption 40 0 true
execute as @a[scores={lsr.kill=1..},team=lsr.red] run effect give @s minecraft:fire_resistance 5 0 true

execute as @a[scores={lsr.kill=1..},tag=boogeyman] run effect give @s minecraft:regeneration 5 1 true
execute as @a[scores={lsr.kill=1..},tag=boogeyman] run effect give @s minecraft:absorption 40 0 true
execute as @a[scores={lsr.kill=1..},tag=boogeyman] run effect give @s minecraft:fire_resistance 5 0 true

scoreboard players reset @a lsr.death
scoreboard players reset @a lsr.kill

scoreboard objectives add count dummy
scoreboard players reset #count count
execute as @a[team=!lsr.red,team=!lsr.spectators] run scoreboard players add #count count 1
scoreboard players reset #b_count count
execute as @a[tag=boogeyman] run scoreboard players add #b_count count 1

execute if score #count count = #b_count count run tellraw @a[tag=boogeyman] {"text":"You were cured, as there is no one for you to lsr.kill.", "color":"gray"}
execute if score #count count = #b_count count run execute as @a[tag=boogeyman] run function lsr:cure_boogeyman

#execute as @e[type=armor_stand,tag=c_tnt] at @s run summon tnt ~ ~ ~ {Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt}]}]}]}]}]}]}]}]}]}]}
#lsr.kill @e[type=armor_stand,tag=c_tnt]

schedule function lsr:loop 1t