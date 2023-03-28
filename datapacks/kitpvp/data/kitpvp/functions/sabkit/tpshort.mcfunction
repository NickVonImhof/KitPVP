tp @s ^ ^ ^0.4
effect give @s levitation 100000 0 true
particle dust 0.502 0.008 0.702 1 ~ ~ ~ 0 0 0 0 1 normal
particle dust 0 0 0.925 1 ~ ~ ~ 0 0 0 0 3 normal
playsound minecraft:entity.vex.hurt player @a ~ ~ ~ 0.4 0.25

xp add @s -3 points
execute store result score @s Mana run data get entity @s XpP 1000