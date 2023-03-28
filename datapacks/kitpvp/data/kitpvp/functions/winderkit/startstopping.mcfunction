
execute store result score @s winder_uuid_ref run scoreboard players get @a[tag=is_player,limit=1] uuid

scoreboard players set @s stop 0
scoreboard players set @s[type=arrow] stop 1
scoreboard players set @s[type=trident] stop 1
scoreboard players set @s[type=potion] stop 1
scoreboard players reset @s[type=arrow,nbt={inGround: 1b}] stop
scoreboard players set @s[type=fireball] stop 2
scoreboard players set @s[type=small_fireball] stop 2
scoreboard players set @s[type=villager] stop 2
scoreboard players set @s[type=player] stop 3

#Regular entities
execute if entity @s[scores={stop=0}] run data modify entity @s NoAI set value 1
execute if entity @s[scores={stop=0},type=creeper] run data modify entity @s Fuse set value 10000

# Arrows/Tridents/Potions:
execute if entity @s[scores={stop=1}] run summon marker ^ ^ ^0.05 {Tags: ["arrowmarker"]}
execute if entity @s[scores={stop=1}] store result score @s motX run data get entity @s Motion[0] 100000
execute if entity @s[scores={stop=1}] store result score @s motY run data get entity @s Motion[1] 100000
execute if entity @s[scores={stop=1}] store result score @s motZ run data get entity @s Motion[2] 100000
execute if entity @s[scores={stop=1}] run data merge entity @s {NoGravity: 1b, Motion: [0.0d, 0.0d, 0.0d]}

# Fireballs/Wither skulls etc
execute if entity @s[scores={stop=2}] store result score @s motX run data get entity @s Motion[0] 100000
execute if entity @s[scores={stop=2}] store result score @s motY run data get entity @s Motion[1] 100000
execute if entity @s[scores={stop=2}] store result score @s motZ run data get entity @s Motion[2] 100000
execute if entity @s[scores={stop=2}] store result score @s powX run data get entity @s power[0] 100000
execute if entity @s[scores={stop=2}] store result score @s powY run data get entity @s power[1] 100000
execute if entity @s[scores={stop=2}] store result score @s powZ run data get entity @s power[2] 100000
execute if entity @s[scores={stop=2}] run data merge entity @s {Motion: [0.0d, 0.0d, 0.0d], power: [0.0d, 0.0d, 0.0d]}


# Players:
execute if entity @s[scores={stop=3}] run function kitpvp:silence

tag @s add timestopped