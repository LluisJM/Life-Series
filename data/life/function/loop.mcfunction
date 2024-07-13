execute as @a[scores={death=1..},team=red_names] run title @s title {"text":"You were eliminated.","color":"gray"}
execute as @a[scores={death=1..},team=red_names] run team join spectators @s
execute as @a[scores={death=1..},team=spectators] run gamemode spectator @s

execute as @a[scores={death=1..},team=yellow_names] run tag @s remove boogeyman
execute as @a[scores={death=1..},team=yellow_names] run tellraw @s [{"text":"","color":"gray"},"You have dropped to your ",{"text":"Last Life","color":"red"},". All alliances are severed and you are now hostile to all players. You may team with others on their Last Life if you wish."]
execute as @a[scores={death=1..},team=yellow_names] run team join red_names @s

execute as @a[scores={death=1..},team=green_names] run team join yellow_names @s

execute as @a[scores={kill=1..},tag=boogeyman] run function life:cure_boogeyman

#execute as @a[scores={kill=1..},team=red_names] run tellraw
execute as @a[scores={kill=1..},team=red_names] run effect give @s minecraft:regeneration 5 1 true
execute as @a[scores={kill=1..},team=red_names] run effect give @s minecraft:absorption 40 0 true
execute as @a[scores={kill=1..},team=red_names] run effect give @s minecraft:fire_resistance 5 0 true

execute as @a[scores={kill=1..},tag=boogeyman] run effect give @s minecraft:regeneration 5 1 true
execute as @a[scores={kill=1..},tag=boogeyman] run effect give @s minecraft:absorption 40 0 true
execute as @a[scores={kill=1..},tag=boogeyman] run effect give @s minecraft:fire_resistance 5 0 true

scoreboard players reset @a death
scoreboard players reset @a kill

scoreboard objectives add count dummy
scoreboard players reset #count count
execute as @a[team=!red_names,team=!spectators] run scoreboard players add #count count 1
scoreboard players reset #b_count count
execute as @a[tag=boogeyman] run scoreboard players add #b_count count 1

execute if score #count count = #b_count count run tellraw @a[tag=boogeyman] {"text":"You were cured, as there is no one for you to kill.", "color":"gray"}
execute if score #count count = #b_count count run execute as @a[tag=boogeyman] run function life:cure_boogeyman

#execute as @e[type=armor_stand,tag=c_tnt] at @s run summon tnt ~ ~ ~ {Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt}]}]}]}]}]}]}]}]}]}]}
#kill @e[type=armor_stand,tag=c_tnt]