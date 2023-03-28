scoreboard players remove @s recurse_depth 1

execute if entity @s[scores={recurse_depth=0}] run summon marker ~ ~ ~ {Tags: ["myspot"]}


execute positioned ^ ^ ^1 unless entity @s[scores={recurse_depth=0}] run function kitpvp:sabkit/summonmarker
scoreboard players reset @s recurse_depth