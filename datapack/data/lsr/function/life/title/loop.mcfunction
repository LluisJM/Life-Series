# 
# Shows a random life amount on sceen.
# 

execute store result score $lsr.live/title lsr.io run random value 2..6
title @a times 0s 3s 0s
execute as @a[tag=lsr.player] at @s run playsound ui.button.click master @s ~ ~ ~


execute if score $lsr.live/title lsr.io matches 4.. run title @a[tag=lsr.player] title {"score": {"name": "$lsr.live/title", "objective": "lsr.io"}, "color": "dark_green"}
execute if score $lsr.live/title lsr.io matches 3 run title @a[tag=lsr.player] title {"score": {"name": "$lsr.live/title", "objective": "lsr.io"}, "color": "green"}
execute if score $lsr.live/title lsr.io matches 2 run title @a[tag=lsr.player] title {"score": {"name": "$lsr.live/title", "objective": "lsr.io"}, "color": "yellow"}