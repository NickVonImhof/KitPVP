execute if entity @s[scores={specmod=0..}] run function kitpvp:adminkit/leavespec

tag @s add is_player
execute as @a[tag=adminsilenced] if score @s admin_uuid_ref = @a[tag=is_player,limit=1] uuid run tag @s add mytarget
execute as @a[tag=mytarget] run function kitpvp:adminkit/losetarget
tag @s remove is_player

effect clear @s regeneration


scoreboard players reset @s armorcolor
scoreboard players reset @s snuck
scoreboard players reset @s silencing_mode
tag @s remove admin