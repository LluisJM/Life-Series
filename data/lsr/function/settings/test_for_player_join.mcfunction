# 
# Tests for new players.
# 

execute as @a[tag=!lsr.has_joined] run function lsr:settings/player_config
tag @a[tag=!lsr.has_joined] add lsr.has_joined