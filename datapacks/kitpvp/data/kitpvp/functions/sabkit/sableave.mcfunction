tag @s remove sab

scoreboard players reset @s Mana
scoreboard players reset @s pressRC
scoreboard players reset @s timer0


tag @s add is_player
execute as @e[tag=sabblast,type=arrow] if score @s uuid = @a[tag=is_player,limit=1] uuid run tag @s add myblast
execute as @e[tag=sabtarget] if score @s sab_uuid_ref = @a[tag=is_player,limit=1] uuid run tag @s add mytarget
tag @s remove is_player
kill @e[tag=myblast]
execute as @e[tag=mytarget] at @s run function kitpvp:sabkit/loseentity

