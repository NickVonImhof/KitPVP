tag @s add is_player
execute anchored eyes run summon fireball ^ ^-.2 ^.5 {power: [0.0d, 0.0d, 0.0d], Tags: ["pyroball", "current"], ExplosionPower: 2}
execute store result score @e[tag=current,limit=1] uuid run scoreboard players get @s uuid
tag @s remove is_player

function kitpvp:rotation
execute store result entity @e[tag=current,limit=1] power[0] double 0.0002 run scoreboard players get @s rotX
execute store result entity @e[tag=current,limit=1] power[1] double 0.0002 run scoreboard players get @s rotY
execute store result entity @e[tag=current,limit=1] power[2] double 0.0002 run scoreboard players get @s rotZ
scoreboard players set @e[tag=current,limit=1] lifetimer0 120

scoreboard players reset @s rotX
scoreboard players reset @s posX
scoreboard players reset @s rotY
scoreboard players reset @s posY
scoreboard players reset @s rotZ
scoreboard players reset @s posZ

tag @e[tag=current,limit=1] remove current

playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 0.4 1
scoreboard players set @s timer0 50

# kill @e[type=item,nbt={Item: {id: "minecraft:blaze_rod", tag: {display: {Name: "{\"text\":\"Pyro Blazerod\",\"color\":\"gold\"}"}, Enchantments: [{id: sharpness, lvl: 5}, {id: fire_aspect, lvl: 3}]}}}]