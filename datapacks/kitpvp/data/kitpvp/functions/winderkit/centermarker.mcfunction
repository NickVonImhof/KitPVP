particle dust 0 1 2 1 ~ ~ ~ .05 .05 .05 0 2

execute as @e[distance=..6,tag=!admin,tag=!is_player,tag=!rewinding,tag=!timestopped,type=!marker] at @s run function kitpvp:winderkit/startstopping

tag @s remove mystopmarker