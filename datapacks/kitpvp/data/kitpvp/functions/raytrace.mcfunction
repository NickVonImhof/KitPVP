scoreboard players add @s recurse_depth 1

tag @e[distance=..1.7,tag=!is_player,type=!item,limit=1] add targeted_mob

execute unless entity @e[tag=targeted_mob,limit=1] positioned ^ ^ ^0.5 unless block ~ ~ ~ minecraft:air run summon marker ~ ~ ~ {Tags: ["targeted_mob"]}
execute unless entity @e[tag=targeted_mob,limit=1] if entity @s[scores={recurse_depth=40..}] run summon marker ~ ~ ~ {Tags: ["targeted_mob"]}
execute unless entity @e[tag=targeted_mob,limit=1] positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:air unless entity @s[scores={recurse_depth=40..}] run function kitpvp:raytrace
scoreboard players reset @s recurse_depth
