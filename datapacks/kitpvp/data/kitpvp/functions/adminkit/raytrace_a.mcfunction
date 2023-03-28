scoreboard players add @s recurse_depth 1

tag @e[distance=..1.7,tag=!is_player,type=!item,type=!marker,type=!arrow,type=!fireball,type=!small_fireball,type=!wither_skull,type=!firework_rocket,limit=1] add targeted_mob

execute unless entity @e[tag=targeted_mob,limit=1] positioned ^ ^ ^0.5 unless block ~ ~ ~ minecraft:air run summon marker ~ ~ ~ {Tags: ["targeted_mob"]}
execute unless entity @e[tag=targeted_mob,limit=1] if entity @s[scores={recurse_depth=40..}] run summon marker ~ ~ ~ {Tags: ["targeted_mob"]}
execute unless entity @e[tag=targeted_mob,limit=1] positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:air unless entity @s[scores={recurse_depth=40..}] run function kitpvp:adminkit/raytrace_a
scoreboard players reset @s recurse_depth

particle dust 0 0 0 1 ~ ~ ~ 0 0 0 0 2
particle dust 1 0 0 1 ~ ~ ~ .15 .15 .15 0 1
particle dust 1 1 0 1 ~ ~ ~ .15 .15 .15 0 1
particle dust 0 1 0.298 1 ~ ~ ~ .15 .15 .15 0 1
particle dust 0.267 0 1 1 ~ ~ ~ .15 .15 .15 0 1
particle dust 0.549 0 1 1 ~ ~ ~ .15 .15 .15 0 1
particle dust 0 0.969 1 1 ~ ~ ~ .15 .15 .15 0 1
particle dust 1 0 0.784 1 ~ ~ ~ .15 .15 .15 0 1