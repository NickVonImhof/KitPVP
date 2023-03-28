tag @s add is_player
tag @a[tag=!adminsilenced,tag=!admin,distance=..8,tag=!rewinding] add mytarget
execute as @a[tag=mytarget] store result score @s admin_uuid_ref run scoreboard players get @a[tag=is_player,limit=1] uuid
tag @s remove is_player

# this will silence the people around
execute as @a[tag=mytarget] run function kitpvp:silence
tag @a[tag=mytarget] add adminsilenced
tag @a[tag=mytarget] remove mytarget

execute positioned ^-8 ^ ^ run particle dust 1 0 0 1 ~ ~1 ~ .05 2 .05 0 12
execute positioned ^8 ^ ^ run particle dust 1 0 0 1 ~ ~1 ~ .05 2 .05 0 12
execute positioned ^-8 ^ ^ run particle dust 1 1 0 1 ~ ~1 ~ .05 2 .05 0 12
execute positioned ^8 ^ ^ run particle dust 1 1 0 1 ~ ~1 ~ .05 2 .05 0 12
execute positioned ^-8 ^ ^ run particle dust 0.267 0 1 1 ~ ~1 ~ .05 2 .05 0 12
execute positioned ^8 ^ ^ run particle dust 0.267 0 1 1 ~ ~1 ~ .05 2 .05 0 12
execute positioned ^-8 ^ ^ run particle dust 0.549 0 1 1 ~ ~1 ~ .05 2 .05 0 12
execute positioned ^8 ^ ^ run particle dust 0.549 0 1 1 ~ ~1 ~ .05 2 .05 0 12
execute positioned ^-8 ^ ^ run particle dust 0 0.969 1 1 ~ ~1 ~ .05 2 .05 0 12
execute positioned ^8 ^ ^ run particle dust 0 0.969 1 1 ~ ~1 ~ .05 2 .05 0 12
execute positioned ^-8 ^ ^ run particle dust 1 0 0.784 1 ~ ~1 ~ .05 2 .05 0 12
execute positioned ^8 ^ ^ run particle dust 1 0 0.784 1 ~ ~1 ~ .05 2 .05 0 12

playsound entity.cat.purr player @a ~ ~ ~ .1 .8





