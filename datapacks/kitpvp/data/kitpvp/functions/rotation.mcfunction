
summon marker ^ ^ ^1 {Tags: ["direction"]}

execute store result score @s posX run data get entity @s Pos[0] 1000
execute store result score @s posY run data get entity @s Pos[1] 1000
execute store result score @s posZ run data get entity @s Pos[2] 1000
execute as @e[type=marker,tag=direction,limit=1] store result score @s posX run data get entity @s Pos[0] 1000
execute as @e[type=marker,tag=direction,limit=1] store result score @s posY run data get entity @s Pos[1] 1000
execute as @e[type=marker,tag=direction,limit=1] store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players operation @e[type=marker,tag=direction,limit=1] posX -= @s posX
scoreboard players operation @e[type=marker,tag=direction,limit=1] posY -= @s posY
scoreboard players operation @e[type=marker,tag=direction,limit=1] posZ -= @s posZ

execute store result score @s rotX run scoreboard players get @e[type=marker,tag=direction,limit=1] posX
execute store result score @s rotY run scoreboard players get @e[type=marker,tag=direction,limit=1] posY
execute store result score @s rotZ run scoreboard players get @e[type=marker,tag=direction,limit=1] posZ

kill @e[tag=direction]