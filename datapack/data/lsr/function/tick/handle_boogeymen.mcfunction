# 
# Cures the boogeyman when they get a kill.
# 

execute as @a[scores={lsr.kill=1..},tag=lsr.boogeyman] run function lsr:boogeyman/cure

scoreboard players reset $count.green_and_yellow lsr.io
execute as @a if predicate lsr:is_green_or_yellow run scoreboard players add $count.green_and_yellow lsr.io 1
scoreboard players reset $count.boogeymen lsr.io
execute as @a[tag=lsr.boogeyman] run scoreboard players add $count.boogeymen lsr.io 1

execute unless score $count.green_and_yellow.max lsr.io >= $count.green_and_yellow lsr.io \
    if score $count.boogeymen lsr.io matches 1.. \
    if score $count.green_and_yellow lsr.io matches ..1 \
    run tellraw @a[tag=lsr.boogeyman] {\
        "translate": "lsr.boogeyman.cure.not_enough_players", \
        "fallback":"You have been cured, as there is no one for you to kill.", \
        "color":"gray" \
    }
execute unless score $count.green_and_yellow.max lsr.io > $count.green_and_yellow lsr.io \
    if score $count.boogeymen lsr.io matches 1.. \
    if score $count.green_and_yellow lsr.io matches ..1 \
    run execute as @a[tag=lsr.boogeyman] run function lsr:boogeyman/cure