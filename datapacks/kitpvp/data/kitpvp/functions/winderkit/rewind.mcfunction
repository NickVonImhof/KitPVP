
scoreboard players set @s[gamemode=survival] specmod 0
scoreboard players set @s[gamemode=creative] specmod 1
scoreboard players set @s[gamemode=adventure] specmod 2

gamemode spectator @s
tag @s add rewinding
execute if entity @s[tag=sabtarget] run function kitpvp:sabkit/loseentity

scoreboard players set @s timer0 20
playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 1.2
particle dust 0 1 2 1 ~ ~1 ~ .5 .8 .5 0 100
