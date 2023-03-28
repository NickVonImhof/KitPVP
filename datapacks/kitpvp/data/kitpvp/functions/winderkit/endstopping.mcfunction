
# Regular entities:
data modify entity @s[scores={stop=0}] NoAI set value 0
data modify entity @s[scores={stop=0},type=creeper,tag=!flyerbomb,tag=!flyerprimary] Fuse set value 20
data modify entity @s[scores={stop=0},type=creeper,tag=flyerprimary] Fuse set value 0


# Arrows, potions, etc etc ugh:
execute store result entity @s[scores={stop=1}] Motion[0] double 0.00001 run scoreboard players get @s motX
execute store result entity @s[scores={stop=1}] Motion[1] double 0.00001 run scoreboard players get @s motY
execute store result entity @s[scores={stop=1}] Motion[2] double 0.00001 run scoreboard players get @s motZ
scoreboard players reset @s[scores={stop=1}] motX
scoreboard players reset @s[scores={stop=1}] motY
scoreboard players reset @s[scores={stop=1}] motZ
data merge entity @s[scores={stop=1},tag=!flyerprimary] {NoGravity: 0b}
kill @e[type=marker,tag=arrowmarker,limit=1,sort=nearest]


# Fireball stuff etc
execute store result entity @s[scores={stop=2}] Motion[0] double 0.00001 run scoreboard players get @s motX
execute store result entity @s[scores={stop=2}] Motion[1] double 0.00001 run scoreboard players get @s motY
execute store result entity @s[scores={stop=2}] Motion[2] double 0.00001 run scoreboard players get @s motZ
execute store result entity @s[scores={stop=2}] power[0] double 0.00001 run scoreboard players get @s powX
execute store result entity @s[scores={stop=2}] power[1] double 0.00001 run scoreboard players get @s powY
execute store result entity @s[scores={stop=2}] power[2] double 0.00001 run scoreboard players get @s powZ
scoreboard players reset @s[scores={stop=2}] motX
scoreboard players reset @s[scores={stop=2}] motY
scoreboard players reset @s[scores={stop=2}] motZ
scoreboard players reset @s[scores={stop=2}] powX
scoreboard players reset @s[scores={stop=2}] powY
scoreboard players reset @s[scores={stop=2}] powZ


# Players
tag @s[type=player] remove silenced
effect clear @s[type=player] resistance
effect clear @s[type=player] weakness
effect clear @s[type=player] mining_fatigue


tag @s remove mystopped
scoreboard players reset @s stop
scoreboard players reset @s winder_uuid_ref
tag @s remove timestopped