execute if entity @s[scores={invis=1}] run function kitpvp:assassinkit/invisoff

scoreboard players reset @s timer0
scoreboard players reset @s invis
scoreboard players reset @s cleared0
scoreboard players reset @s tpcharges

scoreboard players reset @s Mana

effect clear @s speed
effect clear @s jump_boost
effect clear @s night_vision

tag @s remove assassin