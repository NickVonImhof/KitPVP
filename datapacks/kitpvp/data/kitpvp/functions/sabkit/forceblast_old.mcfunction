execute anchored eyes run summon arrow ^ ^ ^0.4 {NoGravity: 1, Tags: ["sabblast", "current"], damage: 7}
execute store result score @e[tag=current,limit=1] uuid run scoreboard players get @s uuid
scoreboard players set @e[tag=current,limit=1] timer0 3
scoreboard players set @e[tag=current,limit=1] lifetimer0 40
playsound minecraft:entity.vex.hurt player @a ~ ~ ~ .8 .15

function kitpvp:rotation

execute store result entity @e[tag=current,limit=1] Motion[0] double 0.0008 run scoreboard players get @s rotX
execute store result entity @e[tag=current,limit=1] Motion[1] double 0.0008 run scoreboard players get @s rotY
execute store result entity @e[tag=current,limit=1] Motion[2] double 0.0008 run scoreboard players get @s rotZ

scoreboard players reset @s rotX
scoreboard players reset @s posX
scoreboard players reset @s rotY
scoreboard players reset @s posY
scoreboard players reset @s rotZ
scoreboard players reset @s posZ

scoreboard players set @s timer0 22
tag @e[tag=current,limit=1] remove current