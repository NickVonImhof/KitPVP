tag @s add is_player
execute as @e[tag=sabtarget] if score @s sab_uuid_ref = @a[tag=is_player,limit=1] uuid run tag @s add mytarget
execute as @e[tag=mytarget] at @s run function kitpvp:sabkit/loseentity
tag @s remove is_player

effect clear @s levitation