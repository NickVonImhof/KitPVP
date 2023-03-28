execute store result score @s recurse_depth run scoreboard players get @s range
execute anchored eyes positioned ^ ^ ^1 run function kitpvp:cryokit/summonmarker
# there now exists a marker tagged cryoice, current, and with my uuid. also has lifetimer, and ALSO is looking at me.

execute at @e[type=marker,tag=current,limit=1] run fill ^-1 ^-1 ^ ^1 ^1 ^ blue_ice replace air
execute at @e[type=marker,tag=current,limit=1] run function kitpvp:cryokit/icesound
tag @e[type=marker,tag=current,limit=1] remove current