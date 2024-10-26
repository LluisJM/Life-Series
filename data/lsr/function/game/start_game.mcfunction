execute as @a run function lsr:reset_player

#tellraw @a [{"text":"","color":"white"},"The datapack set-up. When you want to choose a lsr.boogeyman, execute ",{"text":"this command","color":"blue","clickEvent":{"action":"suggest_command","value":"/function lsr:choose_lsr.boogeyman"}},". "]

recipe take @a minecraft:tnt
recipe take @a minecraft:name_tag
recipe take @a minecraft:saddle

recipe give @a minecraft:tnt
recipe give @a minecraft:name_tag
recipe give @a minecraft:saddle

tag @a remove lsr.boogeyman

time set 0t
effect clear @a
effect give @a minecraft:regeneration 2 9 true
effect give @a minecraft:saturation 2 9 true