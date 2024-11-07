# 
# Cures the boogeyman when they get a kill.
# 
# TODO: Make the boogeyman cure when no players left to kill.

execute as @a[scores={lsr.kill=1..},tag=lsr.boogeyman] run function lsr:boogeyman/cure

scoreboard players reset $count.green_and_yellow lsr.io
execute as @a[team=lsr.green] run scoreboard players add $count.green_and_yellow lsr.io 1
execute as @a[team=lsr.yellow] run scoreboard players add $count.green_and_yellow lsr.io 1
scoreboard players reset $count.boogeymen lsr.io
execute as @a[tag=lsr.boogeyman] run scoreboard players add $count.boogeymen lsr.io 1

execute if score $count.green_and_yellow.max lsr.io >= $count.green_and_yellow lsr.io \
    if score $count.green_and_yellow lsr.io = $count.boogeymen lsr.io \
    run tellraw @a[tag=lsr.boogeyman] {"text":"You were cured, as there is no one for you to kill.", "color":"gray"}
execute if score $count.green_and_yellow.max lsr.io >= $count.green_and_yellow lsr.io \
    if score $count.green_and_yellow lsr.io = $count.boogeymen lsr.io \
    run execute as @a[tag=lsr.boogeyman] run function lsr:boogeyman/cure