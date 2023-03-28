

scoreboard players reset @s Mana

tag @s add is_player
execute as @e[tag=cryoice,type=marker] if score @s uuid = @a[tag=is_player,limit=1] uuid run tag @s add myicemarker

execute as @e[tag=myicemarker] at @s run fill ^-1 ^-1 ^ ^1 ^1 ^ air replace blue_ice
kill @e[type=marker,tag=myicemarker]

tag @s remove is_player

tag @s remove cryo