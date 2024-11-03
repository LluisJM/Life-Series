# 
# Cures the player that runs it if they are a boogeyman.
# 

title @s[tag=lsr.boogeyman] title {"text":"You are cured.","color":"green"}
#execute as @s[tag=lsr.boogeyman] at @s run playsound minecraft:block.note_block.xylophone ambient @s ~ ~ ~ 2 1.5
tag @s remove lsr.boogeyman