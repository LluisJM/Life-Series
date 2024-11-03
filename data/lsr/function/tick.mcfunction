# 
# Always runs.
# 

execute if score $force_gamemodes lsr.config matches 1 run function lsr:tick/force_gamemodes
scoreboard players enable @a[tag=lsr.operator] lsr.settings