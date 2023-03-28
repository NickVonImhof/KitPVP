# add target within range
tag @s add is_player
tag @e[distance=..1.3,tag=!sabtarget,tag=!sabblast,tag=!is_player,type=!item,type=!armor_stand,type=!marker] add mytarget
tag @s remove is_player
tag @a[gamemode=spectator,tag=mytarget] remove mytarget

# store uuid_ref to myself on target
tag @e[tag=mytarget,limit=1] add sabtarget
execute store result score @e[tag=mytarget,limit=1] sab_uuid_ref run scoreboard players get @s uuid
execute if entity @a[tag=mytarget,limit=1,tag=flyer,nbt={FallFlying: 1b}] run function kitpvp:flyerkit/wingsoff
tag @e[tag=mytarget,limit=1] remove mytarget

# continue to check up to the length of range
scoreboard players remove @s recurse_depth 1
execute positioned ^ ^ ^1 unless entity @s[scores={recurse_depth=0}] run function kitpvp:sabkit/getentity
scoreboard players reset @s recurse_depth