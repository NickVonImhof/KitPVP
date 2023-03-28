# ran outside right before this to prevent duplicate runs
#function kitpvp:rotation

# sab is NOW: tag=is_player
# current is NOW: @s

tag @a[tag=is_player,limit=1,tag=sab] add resetrot

execute store result entity @s[type=arrow] Motion[0] double 0.002 run scoreboard players get @a[tag=is_player,limit=1] rotX
execute store result entity @s[type=arrow] Motion[1] double 0.002 run scoreboard players get @a[tag=is_player,limit=1] rotY
execute store result entity @s[type=arrow] Motion[2] double 0.002 run scoreboard players get @a[tag=is_player,limit=1] rotZ

# scores are reset outside of this function

tag @s remove sabtarget
effect clear @s levitation
scoreboard players reset @s sab_uuid_ref

tag @s remove mytarget

effect clear @s levitation