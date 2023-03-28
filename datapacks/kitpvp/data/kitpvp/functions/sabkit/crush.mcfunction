tag @s add is_player
execute as @e[tag=sabtarget] if score @s sab_uuid_ref = @a[tag=is_player,limit=1] uuid run effect give @s instant_damage 1 0 true
execute as @e[tag=sabtarget] at @s if score @s sab_uuid_ref = @a[tag=is_player,limit=1] uuid run playsound minecraft:entity.vex.hurt player @a ~ ~ ~ .8 .15
tag @s remove is_player


playsound minecraft:entity.vex.hurt player @a ~ ~ ~ .8 .15
scoreboard players set @s timer0 22