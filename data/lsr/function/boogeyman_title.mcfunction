tag @r[team=!lsr.red,team=!lsr.spectators,tag=!boogeyman] add boogeyman
title @a times 0.2s 3s 1s
title @a[tag=boogeyman] title {"text":"The Boogeyman","color":"red"}
execute as @a[tag=boogeyman] at @s run playsound minecraft:block.trial_spawner.spawn_mob master @s ~ ~ ~ 1 0.3
execute as @a[tag=boogeyman] at @s run playsound minecraft:event.mob_effect.trial_omen master @s ~ ~ ~ 1 0.5
#execute as @a[tag=boogeyman] at @s run playsound minecraft:block.trial_spawner.ambient_ominous master @s ~ ~ ~ 0.5 0.7
tellraw @a[tag=boogeyman] [{"text":"","color":"gray"},"You are the boogeyman. You must by any means necessary lsr.kill a ",{"text":"green","color":"green"}," or ",{"text":"yellow","color":"yellow"}," name by direct action to be cured of the curse. If you fail, next session you will become a ",{"text":"red","color":"red"}," name. All loyalties and friendships are removed while you are the boogeyman."]
tellraw @a[tag=boogeyman] [{"text":"","color":"gray"},"If you don't get automatically cured when you perform a lsr.kill, please notify an administrator."]
title @a[tag=!boogeyman] title {"text":"NOT the Boogeyman","color":"green"}
execute as @a[tag=!boogeyman] at @s run playsound minecraft:block.note_block.xylophone ambient @s ~ ~ ~ 2 1.5
execute as @a[tag=!boogeyman] at @s run playsound minecraft:block.note_block.xylophone ambient @s ~ ~ ~ 2 2
execute as @a[tag=!boogeyman] at @s run playsound minecraft:block.note_block.xylophone ambient @s ~ ~ ~ 2 1.1
#execute as @a[tag=!boogeyman] at @s run playsound minecraft:block.trial_spawner.ambient_ominous master @s ~ ~ ~ 1 2
tellraw @a[tag=!boogeyman] [{"text":"","color":"gray"},"You are NOT the boogeyman. The Boogeyman needs, by any means, lsr.kill a ",{"text":"green","color":"green"}," or ",{"text":"yellow","color":"yellow"}," name by direct action to be cured of the curse. All loyalties and friendships are removed while he/she is the boogeyman. Beware of him/her!"]