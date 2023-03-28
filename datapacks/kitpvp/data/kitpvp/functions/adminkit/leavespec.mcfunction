scoreboard players set @s recurse_depth 0
function kitpvp:tpup
execute at @s run tp @s ~ ~.2 ~

gamemode survival @s[scores={specmod=0}]
gamemode creative @s[scores={specmod=1}]
gamemode adventure @s[scores={specmod=2}]
scoreboard players reset @s specmod
scoreboard players set @s snuck 1

playsound minecraft:block.redstone_torch.burnout player @a ~ ~ ~ .5 1.8

execute at @s run particle dust 1 0 0 2 ~ ~1 ~ .5 .5 .5 0 12
execute at @s run particle dust 1 1 0 2 ~ ~1 ~ .5 .5 .5 0 12
execute at @s run particle dust 0 1 0.298 2 ~ ~1 ~ .5 .5 .5 0 12
execute at @s run particle dust 0.267 0 1 2 ~ ~1 ~ .5 .5 .5 0 12
execute at @s run particle dust 0.549 0 1 2 ~ ~1 ~ .5 .5 .5 0 12
execute at @s run particle dust 0 0.969 1 2 ~ ~1 ~ .5 .5 .5 0 12
execute at @s run particle dust 1 0 0.784 2 ~ ~1 ~ .5 .5 .5 0 12