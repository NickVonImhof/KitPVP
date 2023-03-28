execute if block ^ ^ ^ blue_ice run tag @s add sound
execute if block ^-1 ^-1 ^ blue_ice run tag @s add sound
execute if block ^-1 ^1 ^ blue_ice run tag @s add sound
execute if block ^1 ^-1 ^ blue_ice run tag @s add sound
execute if block ^1 ^1 ^ blue_ice run tag @s add sound


execute if entity @s[tag=sound] run playsound block.glass.break player @a ~ ~ ~ 1 0.8

tag @s remove sound