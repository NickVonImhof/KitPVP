
execute if entity @s[scores={timespeed=1}] run function kitpvp:winderkit/timespeedoff

execute if entity @s[tag=stopping] run function kitpvp:winderkit/resumetime

effect clear @s[scores={rewindhealth=0..}] regeneration

scoreboard players reset @s timespeed
scoreboard players reset @s Mana
scoreboard players reset @s timer0
scoreboard players reset @s timer1
scoreboard players reset @s timer2
scoreboard players reset @s snuck
scoreboard players reset @s rewindhealth
scoreboard players reset @s pressRC

tag @s add is_player
execute as @e[tag=recallmarker,type=marker] if score @s uuid = @a[tag=is_player,limit=1] uuid run tag @s add mymarker
kill @e[type=marker,tag=mymarker]
tag @s remove is_player

tag @s remove winder