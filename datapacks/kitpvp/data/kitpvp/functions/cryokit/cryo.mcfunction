execute unless entity @s[nbt={Inventory: [{Slot: 100b, id: "minecraft:leather_boots", tag: {display: {Name: "{\"text\":\"Cryo Boots\",\"color\":\"cyan\"}", color: 5636095}, Unbreakable: 1}}]}] run item replace entity @s armor.feet with leather_boots{display: {Name: "{\"text\":\"Cryo Boots\",\"color\":\"cyan\"}", color: 5636095}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 101b, id: "minecraft:leather_leggings", tag: {display: {Name: "{\"text\":\"Cryo Leggings\",\"color\":\"cyan\"}", color: 5636095}, Unbreakable: 1}}]}] run item replace entity @s armor.legs with leather_leggings{display: {Name: "{\"text\":\"Cryo Leggings\",\"color\":\"cyan\"}", color: 5636095}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 102b, id: "minecraft:leather_chestplate", tag: {display: {Name: "{\"text\":\"Cryo Chestplate\",\"color\":\"cyan\"}", color: 5636095}, Unbreakable: 1}}]}] run item replace entity @s armor.chest with leather_chestplate{display: {Name: "{\"text\":\"Cryo Chestplate\",\"color\":\"cyan\"}", color: 5636095}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 103b, id: "minecraft:leather_helmet", tag: {display: {Name: "{\"text\":\"Cryo Helmet\",\"color\":\"cyan\"}", color: 5636095}, Unbreakable: 1}}]}] run item replace entity @s armor.head with leather_helmet{display: {Name: "{\"text\":\"Cryo Helmet\",\"color\":\"cyan\"}", color: 5636095}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:prismarine_shard", tag: {display: {Name: "{\"text\":\"Cryo Shard\",\"color\":\"cyan\"}"}, Enchantments: [{id: sharpness, lvl: 6}]}}]}] run item replace entity @s hotbar.0 with prismarine_shard{display: {Name: "{\"text\":\"Cryo Shard\",\"color\":\"cyan\"}"}, Enchantments: [{id: sharpness, lvl: 6}]}
execute unless entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:snowball", tag: {display: {Name: "{\"text\":\"Cryo Blizzard\",\"color\":\"cyan\"}"}}}]}] run item replace entity @s weapon.offhand with snowball{display: {Name: "{\"text\":\"Cryo Blizzard\",\"color\":\"cyan\"}"}}


# Create ice power

execute if entity @s[scores={Sneak=1..,Mana=14..},tag=!silenced] run function kitpvp:cryokit/getrange



# Effects for player's entities
tag @s add is_player
execute as @e[tag=cryoice,type=marker] if score @s uuid = @a[tag=is_player,limit=1] uuid run tag @s add myicemarker

execute as @e[tag=myicemarker,type=marker] at @s run function kitpvp:cryokit/icemarkereffects

tag @s remove is_player