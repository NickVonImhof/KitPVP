
tp ~ ~.63 ~

scoreboard players set @s[gamemode=survival] specmod 0
scoreboard players set @s[gamemode=creative] specmod 1
scoreboard players set @s[gamemode=adventure] specmod 2
scoreboard players set @s snuck 1

gamemode spectator @s

playsound minecraft:block.redstone_torch.burnout player @a ~ ~ ~ .5 1.8

particle dust 1 0 0 2 ~ ~1 ~ .5 .5 .5 0 12
particle dust 1 1 0 2 ~ ~1 ~ .5 .5 .5 0 12
particle dust 0 1 0.298 2 ~ ~1 ~ .5 .5 .5 0 12
particle dust 0.267 0 1 2 ~ ~1 ~ .5 .5 .5 0 12
particle dust 0.549 0 1 2 ~ ~1 ~ .5 .5 .5 0 12
particle dust 0 0.969 1 2 ~ ~1 ~ .5 .5 .5 0 12
particle dust 1 0 0.784 2 ~ ~1 ~ .5 .5 .5 0 12

execute if entity @s[scores={silencing_mode=1}] run function kitpvp:adminkit/auraoff
execute if entity @s[tag=sabtarget] run function kitpvp:sabkit/loseentity
