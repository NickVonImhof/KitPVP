execute anchored eyes run summon arrow ^ ^ ^0.4 {NoGravity: 1, Tags: ["flyerprimary", "current"], CustomPotionEffects: [{Id: 26, Amplifier: 1, Duration: 2, ShowParticles: 1b}], CustomPotionColor: 8231582, damage: 2}
execute store result score @e[tag=current,limit=1] uuid run scoreboard players get @s uuid
scoreboard players set @e[tag=current,limit=1] timer0 3
scoreboard players set @e[tag=current,limit=1] lifetimer0 40

function kitpvp:rotation

execute store result entity @e[tag=current,limit=1] Motion[0] double 0.0011 run scoreboard players get @s rotX
execute store result entity @e[tag=current,limit=1] Motion[1] double 0.0011 run scoreboard players get @s rotY
execute store result entity @e[tag=current,limit=1] Motion[2] double 0.0011 run scoreboard players get @s rotZ

scoreboard players reset @s rotX
scoreboard players reset @s posX
scoreboard players reset @s rotY
scoreboard players reset @s posY
scoreboard players reset @s rotZ
scoreboard players reset @s posZ

playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ .4 1.8

scoreboard players set @s timer0 13
tag @e[tag=current,limit=1] remove current