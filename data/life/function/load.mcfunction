tellraw @a "Reloaded data pack."
#tellraw @a[tag=op] [{"text":"","color":"white"},"If you want to run setup, click ",{"text":"here","color":"blue","clickEvent":{"action":"suggest_command","value":"/function life:setup"}},". "]

scoreboard objectives add death deathCount
scoreboard objectives add kill playerKillCount

function life:register_life {color:"red"}
function life:register_life {color:"yellow"}
function life:register_life {color:"green"}
team add spectators
team modify spectators color gray

gamerule sendCommandFeedback false
gamerule commandBlockOutput false