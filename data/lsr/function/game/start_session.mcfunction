# 
# Starts the session. Punishes boogeymen and starts function `lsr:game/tick`
# 

tellraw @a[tag=!lsr.boogeyman] [{"text":"","color":"gray"},"Session has started. Good luck!"]
tellraw @a[tag=lsr.boogeyman] [{"text":"","color":"gray"},"You failed to lsr.kill a ",{"text":"green","color":"green"}," or ",{"text":"yellow","color":"yellow"}," name last session as the lsr.boogeyman. As punishment, you have dropped to your ",{"text":"Last Life","color":"red"},". All alliances are severed and you are now hostile to all players. You may team with others on their Last Life if you wish."]
execute as @s[tag=lsr.boogeyman] at @s run playsound minecraft:block.note_block.xylophone ambient @s ~ ~ ~ 2 0.1
team join lsr.red @a[tag=lsr.boogeyman]
tag @a remove lsr.boogeyman
function lsr:game/tick

scoreboard players enable @a[tag=lsr.operator] lsr.choose_boogeyman