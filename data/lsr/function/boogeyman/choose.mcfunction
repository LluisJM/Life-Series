# 
# This function runs after the boogeyman windup. It chooses and shows a title to the boogeyman.
# 

tag @r[team=!lsr.red,team=!lsr.spectators,tag=!lsr.boogeyman] add lsr.boogeyman
title @a times 0.2s 3s 1s
title @a[tag=lsr.boogeyman] title {"text":"The lsr.boogeyman","color":"red"}
execute as @a[tag=lsr.boogeyman] at @s run playsound minecraft:block.trial_spawner.spawn_mob master @s ~ ~ ~ 1 0.3
execute as @a[tag=lsr.boogeyman] at @s run playsound minecraft:event.mob_effect.trial_omen master @s ~ ~ ~ 1 0.5
#execute as @a[tag=lsr.boogeyman] at @s run playsound minecraft:block.trial_spawner.ambient_ominous master @s ~ ~ ~ 0.5 0.7
tellraw @a[tag=lsr.boogeyman] [{"text":"","color":"gray"},"You are the lsr.boogeyman. You must by any means necessary lsr.kill a ",{"text":"green","color":"green"}," or ",{"text":"yellow","color":"yellow"}," name by direct action to be cured of the curse. If you fail, next session you will become a ",{"text":"red","color":"red"}," name. All loyalties and friendships are removed while you are the lsr.boogeyman."]
tellraw @a[tag=lsr.boogeyman] [{"text":"","color":"gray"},"If you don't get automatically cured when you perform a lsr.kill, please notify an administrator."]
title @a[tag=!lsr.boogeyman] title {"text":"NOT the lsr.boogeyman","color":"green"}
execute as @a[tag=!lsr.boogeyman] at @s run playsound minecraft:block.note_block.xylophone ambient @s ~ ~ ~ 2 1.5
execute as @a[tag=!lsr.boogeyman] at @s run playsound minecraft:block.note_block.xylophone ambient @s ~ ~ ~ 2 2
execute as @a[tag=!lsr.boogeyman] at @s run playsound minecraft:block.note_block.xylophone ambient @s ~ ~ ~ 2 1.1
#execute as @a[tag=!lsr.boogeyman] at @s run playsound minecraft:block.trial_spawner.ambient_ominous master @s ~ ~ ~ 1 2
tellraw @a[tag=!lsr.boogeyman] [{"text":"","color":"gray"},"You are NOT the lsr.boogeyman. The lsr.boogeyman needs, by any means, lsr.kill a ",{"text":"green","color":"green"}," or ",{"text":"yellow","color":"yellow"}," name by direct action to be cured of the curse. All loyalties and friendships are removed while he/she is the lsr.boogeyman. Beware of him/her!"]