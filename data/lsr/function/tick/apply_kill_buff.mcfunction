# 
# Rewards red lives and boogeymen with a buff when they gett a kill.
# 

#execute as @a[scores={lsr.kill=1..},team=lsr.red] run tellraw
execute as @a[scores={lsr.kill=1..},team=lsr.red] run effect give @s minecraft:regeneration 5 1 true
execute as @a[scores={lsr.kill=1..},team=lsr.red] run effect give @s minecraft:absorption 40 0 true
execute as @a[scores={lsr.kill=1..},team=lsr.red] run effect give @s minecraft:fire_resistance 5 0 true

execute as @a[scores={lsr.kill=1..},tag=lsr.boogeyman] run effect give @s minecraft:regeneration 5 1 true
execute as @a[scores={lsr.kill=1..},tag=lsr.boogeyman] run effect give @s minecraft:absorption 40 0 true
execute as @a[scores={lsr.kill=1..},tag=lsr.boogeyman] run effect give @s minecraft:fire_resistance 5 0 true