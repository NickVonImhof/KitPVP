scoreboard players set @s recurse_depth 0
execute anchored eyes run function kitpvp:assassinkit/teletarget
execute unless entity @s[scores={teledistance=1..}] unless entity @e[tag=teletarget,limit=1] run tag @s add notp

tellraw @s[tag=notp] {"text":"Unable to teleport","italic":true,"color":"aqua"}
execute if entity @s[tag=!notp] run particle smoke ~ ~1 ~ .3 .5 .3 .04 60
execute if entity @s[tag=!notp,scores={teledistance=8..}] run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 1

execute if entity @s[scores={teledistance=1..}] anchored eyes run function kitpvp:assassinkit/teledistance
execute if entity @e[tag=teletarget,limit=1] run function kitpvp:assassinkit/targeted

execute if entity @s[tag=!notp] at @s run particle smoke ~ ~1 ~ .3 .5 .3 .04 60
execute if entity @s[tag=!notp] at @s run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 1

tp @s @s
execute if entity @s[tag=sabtarget] run function kitpvp:sabkit/loseentity

scoreboard players reset @s teledistance
tag @s[tag=notp] remove notp


scoreboard players remove @s tpcharges 1



