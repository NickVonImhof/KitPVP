
scoreboard players add @s recurse_depth 1

execute at @s unless block ~ ~ ~ air run tp @s ~ ~0.2 ~
execute at @s unless block ~ ~ ~ air unless entity @s[scores={recurse_depth=20..}] run function kitpvp:tpup
scoreboard players reset @s recurse_depth