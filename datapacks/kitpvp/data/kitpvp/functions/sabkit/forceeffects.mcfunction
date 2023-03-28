scoreboard players remove @s[tag=!stopped] lifetimer0 1

particle dust 0.502 0.008 0.702 1 ~ ~ ~ 0 0 0 0 1 normal
particle dust 0 0 0.925 1 ~ ~ ~ 0 0 0 0 3 normal

kill @s[scores={lifetimer0=0}]

kill @s[nbt={inGround: 1b}]

tag @s remove myblast
