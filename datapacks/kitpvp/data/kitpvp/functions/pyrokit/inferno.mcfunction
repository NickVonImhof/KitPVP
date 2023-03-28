
tag @s add is_player
execute anchored eyes run summon small_fireball ^ ^-.2 ^.5 {power: [0.0d, 0.0d, 0.0d], Tags: ["pyroflame", "current"]}
execute store result score @e[tag=current,limit=1] uuid run scoreboard players get @s uuid
tag @s remove is_player

function kitpvp:rotation
execute store result entity @e[tag=current,limit=1] power[0] double 0.0002 run scoreboard players get @s rotX
execute store result entity @e[tag=current,limit=1] power[1] double 0.0002 run scoreboard players get @s rotY
execute store result entity @e[tag=current,limit=1] power[2] double 0.0002 run scoreboard players get @s rotZ
scoreboard players set @e[tag=current,limit=1] lifetimer0 20

scoreboard players reset @s rotX
scoreboard players reset @s posX
scoreboard players reset @s rotY
scoreboard players reset @s posY
scoreboard players reset @s rotZ
scoreboard players reset @s posZ

tag @e[tag=current,limit=1] remove current

xp add @s -20 points
execute store result score @s Mana run data get entity @s XpP 1000

playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.4 1

effect give @s[x_rotation=45..100] slow_falling 1000000 0 true