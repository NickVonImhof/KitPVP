tag @s add is_player
tag @e[distance=..1.3,tag=!is_player,type=!item,type=!arrow,type=!fireball,type=!small_fireball,type=!armor_stand,type=!marker] add teletarget
execute as @e[tag=teletarget,limit=1] anchored eyes at @s unless block ^ ^ ^-1.5 air run tag @s remove teletarget
tag @s remove is_player

execute positioned ^ ^ ^1 if block ~ ~ ~ minecraft:air store result score @s teledistance run scoreboard players get @s recurse_depth
scoreboard players add @s recurse_depth 1
execute if entity @e[tag=teletarget,limit=1] run scoreboard players set @s teledistance 0
execute positioned ^ ^ ^1 unless entity @s[scores={recurse_depth=20..}] unless entity @e[tag=teletarget] run function kitpvp:assassinkit/teletarget
scoreboard players reset @s recurse_depth