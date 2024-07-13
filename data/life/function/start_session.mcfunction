tellraw @a[tag=boogeyman] [{"text":"","color":"gray"},"You failed to kill a ",{"text":"green","color":"green"}," or ",{"text":"yellow","color":"yellow"}," name last session as the boogeyman. As punishment, you have dropped to your ",{"text":"Last Life","color":"red"},". All alliances are severed and you are now hostile to all players. You may team with others on their Last Life if you wish."]
execute as @s[tag=boogeyman] at @s run playsound minecraft:block.note_block.xylophone ambient @s ~ ~ ~ 2 0.1
team join red_names @a[tag=boogeyman]
tag @a remove boogeyman