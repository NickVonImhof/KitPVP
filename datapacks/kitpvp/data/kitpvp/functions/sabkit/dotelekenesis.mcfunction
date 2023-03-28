execute store result score @s recurse_depth run scoreboard players get @s range
execute anchored eyes positioned ^ ^ ^1 run function kitpvp:sabkit/summonmarker
# there now exists a marker tagged myspot.

execute at @e[tag=myspot,type=marker,limit=1] run particle dust 0.502 0.008 0.702 1 ~ ~ ~ .2 .2 .2 0 2 normal
execute at @e[tag=myspot,type=marker,limit=1] run particle dust 0 0 0.925 1 ~ ~ ~ .2 .2 .2 0 6 normal
execute at @e[tag=myspot,type=marker,limit=1] run playsound minecraft:entity.vex.hurt player @a ~ ~ ~ 0.4 0.55

execute store result score @s recurse_depth run scoreboard players get @s range
execute anchored eyes positioned ^ ^ ^1 run function kitpvp:sabkit/getentity






# kill @e[tag=myspot,type=marker,limit=1]


#execute if entity @s[scores={range=1..}] positioned ^ ^ ^1 run function kitpvp:sabkit/getentity

#execute if entity @s[scores={range=1..}] if entity @e[tag=sabtarget] run function kitpvp:sabkit/tpentity