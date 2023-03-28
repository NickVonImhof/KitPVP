particle explosion ~ ~ ~ 0 0 0 0 1

execute if entity @e[type=!firework_rocket,type=!arrow,type=!marker,type=!item,tag=!is_player,tag=!flyerbomb,distance=..3] unless entity @s[scores={stop=0..}] run tag @s add detonating
execute unless block ~ ~-1 ~ air run tag @s add detonating
effect clear @s[tag=detonating]
data merge entity @s[tag=detonating] {Fuse: 0}

tag @s remove mybomb