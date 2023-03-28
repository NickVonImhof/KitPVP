tp @s ^ ^ ^1
scoreboard players remove @s teledistance 1

execute unless entity @s[scores={teledistance=..0}] positioned ^ ^ ^1 run function kitpvp:assassinkit/teledistance
