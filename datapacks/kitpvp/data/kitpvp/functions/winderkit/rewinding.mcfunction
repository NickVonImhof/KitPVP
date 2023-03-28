effect give @s darkness 100000 0 true
effect give @s blindness 100000 0 true
tp @s @s

execute if entity @s[scores={timer0=0}] run function kitpvp:winderkit/rewindend