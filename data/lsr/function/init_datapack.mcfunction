#tellraw @a "Reloaded data pack."
#tellraw @a[tag=op] [{"text":"","color":"white"},"If you want to run setup, click ",{"text":"here","color":"blue","clickEvent":{"action":"suggest_command","value":"/function lsr:setup"}},". "]

scoreboard objectives add lsr.io dummy

scoreboard objectives add lsr.death deathCount
scoreboard objectives add lsr.kill playerKillCount

team add lsr.red
team modify lsr.red color red
team add lsr.yellow
team modify lsr.yellow color yellow
team add lsr.green
team modify lsr.green color green
team add lsr.spectators
team modify lsr.spectators color gray

gamerule sendCommandFeedback false
gamerule commandBlockOutput false