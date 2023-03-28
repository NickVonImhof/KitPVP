effect clear @s darkness
effect clear @s blindness

tag @s remove rewinding

gamemode survival @s[scores={specmod=0}]
gamemode creative @s[scores={specmod=1}]
gamemode adventure @s[scores={specmod=2}]

scoreboard players set @s timer1 70

tag @s[tag=!rewinding] add is_player
execute as @e[tag=recallmarker,type=marker] if score @s uuid = @a[tag=is_player,limit=1] uuid run tag @s add mymarker

execute at @e[tag=mymarker,scores={timer0=181..},limit=1,sort=furthest] run tp @s[tag=!silenced] ~ ~ ~
execute store result score @s[tag=!silenced] rewindhealth run scoreboard players get @e[tag=mymarker,scores={timer0=181..},limit=1,sort=furthest] rewindhealth
tag @e[type=marker,tag=mymarker] remove mymarker

tag @s remove is_player

execute at @s run playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 0.8
execute at @s run particle dust 0 1 2 1 ~ ~1 ~ .5 .8 .5 0 100