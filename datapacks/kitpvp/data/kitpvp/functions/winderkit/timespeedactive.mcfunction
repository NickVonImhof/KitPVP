
execute unless entity @s[nbt={ActiveEffects: [{Id: 10}]}] run effect give @s regeneration 100000 0 true
execute unless entity @s[nbt={ActiveEffects: [{Id: 1}]}] run effect give @s speed 100000 9 true
execute unless entity @s[nbt={ActiveEffects: [{Id: 3}]}] run effect give @s haste 100000 3 true
execute unless entity @s[nbt={ActiveEffects: [{Id: 8}]}] run effect give @s jump_boost 100000 8 true
execute unless entity @s[nbt={ActiveEffects: [{Id: 25}]}] run effect give @s[nbt={OnGround: 0b}] levitation 100000 180 true
effect clear @s[nbt={OnGround: 1b, ActiveEffects: [{Id: 25}]}] levitation

execute if entity @s[predicate=kitpvp:sprinting] run particle instant_effect ~ ~ ~ 0 0 0 .15 2
particle dust 0 1 2 1 ~ ~1 ~ .35 .5 .35 0 5

xp add @s -3 points
execute store result score @s Mana run data get entity @s XpP 1000