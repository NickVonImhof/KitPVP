execute if entity @s[tag=flyer] run function kitpvp:flyerkit/flyerleave
execute if entity @s[tag=assassin] run function kitpvp:assassinkit/assassinleave
execute if entity @s[tag=admin] run function kitpvp:adminkit/adminleave
execute if entity @s[tag=pyro] run function kitpvp:pyrokit/pyroleave
execute if entity @s[tag=sab] run function kitpvp:sabkit/sableave
execute if entity @s[tag=winder] run function kitpvp:winderkit/winderleave
execute if entity @s[tag=cryo] run function kitpvp:cryokit/cryoleave

tag @s remove silenced
xp set @s 0 points
clear @s
effect clear @s