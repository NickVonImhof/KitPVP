scoreboard players remove @s recurse_depth 1

scoreboard players add @s range 1

execute positioned ^ ^ ^1 if block ~ ~ ~ air unless entity @s[scores={recurse_depth=0}] run function kitpvp:cryokit/range
scoreboard players reset @s recurse_depth