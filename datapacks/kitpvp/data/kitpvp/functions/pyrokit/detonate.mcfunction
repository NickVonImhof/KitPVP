
tag @s add hasresistance

effect give @s resistance 1000000 100 true

execute if entity @s[scores={explosionsize=1..10}] anchored eyes positioned ^ ^ ^-0.5 run summon minecraft:creeper ~ ~-.8 ~ {Fuse: 0, ExplosionRadius: 1, ignited: 1}
execute if entity @s[scores={explosionsize=11..20}] anchored eyes positioned ^ ^ ^-0.5 run summon minecraft:creeper ~ ~-.8 ~ {Fuse: 0, ExplosionRadius: 2, ignited: 1}
execute if entity @s[scores={explosionsize=21..30}] anchored eyes positioned ^ ^ ^-0.5 run summon minecraft:creeper ~ ~-.8 ~ {Fuse: 0, ExplosionRadius: 3, ignited: 1}
execute if entity @s[scores={explosionsize=31..40}] anchored eyes positioned ^ ^ ^-0.5 run summon minecraft:creeper ~ ~-.8 ~ {Fuse: 0, ExplosionRadius: 4, ignited: 1}
execute if entity @s[scores={explosionsize=41..}] anchored eyes positioned ^ ^ ^-0.5 run summon minecraft:creeper ~ ~-.8 ~ {Fuse: 0, ExplosionRadius: 5, ignited: 1}


scoreboard players reset @s explosionsize
scoreboard players set @s timer1 50