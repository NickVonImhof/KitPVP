particle dust 0 1 2 1 ~ ~ ~ 0 0 0 0 1

scoreboard players remove @s recurse_depth 1

execute unless entity @s[scores={recurse_depth=0}] positioned ^ ^ ^0.3 run function kitpvp:winderkit/greenline

scoreboard players reset @s recurse_depth