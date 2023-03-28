execute at @e[tag=teletarget,limit=1] run summon marker ~ ~-0.75 ~ {Tags: ["current"]}

tag @s add is_player
execute as @e[tag=teletarget,limit=1] at @s run tp @a[tag=is_player,limit=1] ^ ^ ^-1.5 facing entity @e[tag=current,limit=1] feet
tag @s remove is_player
tag @e[tag=teletarget,limit=1] remove teletarget
kill @e[tag=current,limit=1]

execute at @s unless block ~ ~ ~ air run scoreboard players set @s recurse_depth 0
execute at @s unless block ~ ~ ~ air run function kitpvp:tpup
