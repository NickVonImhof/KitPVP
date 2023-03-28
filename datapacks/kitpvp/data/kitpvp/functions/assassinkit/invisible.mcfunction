effect give @s invisibility 1000000 0 true
effect give @s speed 1000000 19 true
effect give @s resistance 1000000 1 true
execute unless entity @s[nbt={ActiveEffects: [{Id: 10}]}] run effect give @s regeneration 1000000 1 true

xp add @s -3 points
execute store result score @s Mana run data get entity @s XpP 1000