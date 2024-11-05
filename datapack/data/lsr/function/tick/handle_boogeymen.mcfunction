# 
# Cures the boogeyman when they get a kill.
# 
# TODO: Make the boogeyman cure when no players left to kill.

execute as @a[scores={lsr.kill=1..},tag=lsr.boogeyman] run function lsr:boogeyman/cure