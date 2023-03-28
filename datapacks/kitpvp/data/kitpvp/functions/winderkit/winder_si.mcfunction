execute if entity @s[scores={timespeed=1}] run function kitpvp:winderkit/timespeedoff
execute if entity @s[tag=rewinding] run scoreboard players set @s timer0 0
execute if entity @s[tag=stopping] run function kitpvp:winderkit/resumetime