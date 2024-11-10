# 
# Checks if there are any players that can be chosen as the Boogeyman.
# 

execute unless score $game_state lsr.io matches 2 run return fail
execute unless entity @a[team=lsr.green,tag=!lsr.boogeyman] unless entity @a[team=lsr.yellow,tag=!lsr.boogeyman] run return fail