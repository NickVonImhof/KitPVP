scoreboard players remove @s[tag=!timestopped] timer0 1
scoreboard players remove @s[tag=!timestopped] lifetimer0 1

particle firework ~ ~ ~ 0 0 0 0 1

execute if entity @s[scores={timer0=0}] run particle explosion ~ ~ ~ 0 0 0 0 1
scoreboard players set @s[scores={timer0=0}] timer0 10

execute if entity @s[scores={lifetimer0=0}] run summon minecraft:creeper ~ ~ ~ {Fuse: 0, ExplosionRadius: 1, ignited: 1}
kill @s[scores={lifetimer0=0}]

execute if entity @s[nbt={inGround: 1b}] run summon minecraft:creeper ~ ~1 ~ {Fuse: 0, ExplosionRadius: 1, ignited: 1}
kill @s[nbt={inGround: 1b}]

tag @s remove myprimary
