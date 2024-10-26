#tellraw @a "Reloaded data pack."
#tellraw @a[tag=op] [{"text":"","color":"white"},"If you want to run setup, click ",{"text":"here","color":"blue","clickEvent":{"action":"suggest_command","value":"/function lsr:setup"}},". "]

scoreboard objectives add lsr.death deathCount
scoreboard objectives add lsr.kill playerKillCount

function lsr:register_life {color:"red"}
function lsr:register_life {color:"yellow"}
function lsr:register_life {color:"green"}
team add lsr.spectators
team modify lsr.spectators color gray

gamerule sendCommandFeedback false
gamerule commandBlockOutput false