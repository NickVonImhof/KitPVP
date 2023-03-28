execute if entity @s[scores={explosionsize=1..10}] run playsound minecraft:entity.creeper.hurt player @a ~ ~ ~ .3 .4
execute if entity @s[scores={explosionsize=11..20}] run playsound minecraft:entity.creeper.hurt player @a ~ ~ ~ .3 .8
execute if entity @s[scores={explosionsize=21..30}] run playsound minecraft:entity.creeper.hurt player @a ~ ~ ~ .3 1.2
execute if entity @s[scores={explosionsize=31..40}] run playsound minecraft:entity.creeper.hurt player @a ~ ~ ~ .3 1.6
execute if entity @s[scores={explosionsize=41..}] run playsound minecraft:entity.creeper.hurt player @a ~ ~ ~ .3 2


execute if entity @s[scores={explosionsize=1..10}] run particle flame ~ ~ ~ 0 0 0 .04 4 normal
execute if entity @s[scores={explosionsize=11..20}] run particle flame ~ ~ ~ 0 0 0 .08 6 normal
execute if entity @s[scores={explosionsize=21..30}] run particle flame ~ ~ ~ 0 0 0 .12 8 normal
execute if entity @s[scores={explosionsize=31..40}] run particle flame ~ ~ ~ 0 0 0 .16 10 normal
execute if entity @s[scores={explosionsize=41..}] run particle flame ~ ~ ~ 0 0 0 .2 12 normal