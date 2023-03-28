summon minecraft:creeper ^ ^.5 ^7 {ExplosionRadius: 2, Fuse: 500, ignited: 1, Invulnerable: 1, CustomName: "{\"text\":\"Flyer Bomb\"}", ActiveEffects: [{Id: 14, Amplifier: 0, Duration: 10000}], Tags: ["flyerbomb", "newbomb"]}
summon minecraft:creeper ^ ^.5 ^4 {ExplosionRadius: 2, Fuse: 500, ignited: 1, Invulnerable: 1, CustomName: "{\"text\":\"Flyer Bomb\"}", ActiveEffects: [{Id: 14, Amplifier: 0, Duration: 10000}], Tags: ["flyerbomb", "newbomb"]}
summon minecraft:creeper ^ ^.5 ^2 {ExplosionRadius: 2, Fuse: 500, ignited: 1, Invulnerable: 1, CustomName: "{\"text\":\"Flyer Bomb\"}", ActiveEffects: [{Id: 14, Amplifier: 0, Duration: 10000}], Tags: ["flyerbomb", "newbomb"]}

execute store result score @e[tag=newbomb] uuid run scoreboard players get @s uuid

tag @s add is_player

execute as @e[type=creeper,tag=newbomb] run execute store result entity @s Motion[0] double 0.8 run data get entity @a[tag=is_player,limit=1] Motion[0] 1
execute as @e[type=creeper,tag=newbomb] run execute store result entity @s Motion[2] double 0.8 run data get entity @a[tag=is_player,limit=1] Motion[2] 1

tag @s remove is_player

tag @e[tag=newbomb] remove newbomb
scoreboard players set @s timer1 50
# kill @e[type=item,nbt={Item: {id: "minecraft:feather", tag: {display: {Name: "{\"text\":\"Flyer Feather\",\"color\":\"gray\"}", color: 11184810}, Enchantments: [{id: sharpness, lvl: 5}], Unbreakable: 1}}}]