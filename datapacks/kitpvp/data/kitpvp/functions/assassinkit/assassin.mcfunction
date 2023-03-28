# Teleport power


# Invis power
execute if entity @s[scores={Sneak=1..,Mana=14..,invis=0,cleared0=0},tag=!silenced] run function kitpvp:assassinkit/invison
execute if entity @s[scores={Sneak=1..,invis=1,cleared0=0}] run function kitpvp:assassinkit/invisoff
execute if entity @s[scores={Mana=..13}] run function kitpvp:assassinkit/invisoff
execute if entity @s[scores={Damage=1..}] run function kitpvp:assassinkit/invisoff
scoreboard players set @s[scores={Sneak=0,cleared0=1}] cleared0 0
execute if entity @s[scores={invis=1}] run function kitpvp:assassinkit/invisible

# Don't take fall damage
execute if entity @s[nbt={OnGround: 0b},tag=!silenced] run effect give @s jump_boost 1000000 255 true
execute if entity @s[nbt={OnGround: 1b},nbt={ActiveEffects: [{Id: 8}]}] run effect clear @s jump_boost


# Restore mana when not invis
execute if entity @s[scores={invis=0,Mana=..984}] run xp add @s 3 points
execute store result score @s Mana run data get entity @s XpP 1000
xp set @s[gamemode=creative] 995 points


# Teleport power
execute if entity @s[scores={Carrot=1..,tpcharges=1..},tag=!silenced] run function kitpvp:assassinkit/teleport

scoreboard players remove @s[scores={tpcharges=..3,timer0=1..}] timer0 1
tag @s[scores={tpcharges=..3,timer0=0}] add charges
scoreboard players add @s[tag=charges] tpcharges 1
scoreboard players set @s[tag=charges] timer0 30
tag @s[tag=charges] remove charges


# Free speed n vision
effect give @s[tag=!silenced] speed 1000000 3 true
effect give @s[tag=!silenced] night_vision 1000000 0 true

# Items
execute unless entity @s[nbt={Inventory: [{Slot: 100b, id: "minecraft:leather_boots", tag: {display: {Name: "{\"text\":\"Assassin Boots\",\"color\":\"white\"}", color: 0}, Unbreakable: 1}}]}] run item replace entity @s[scores={invis=0}] armor.feet with leather_boots{display: {Name: "{\"text\":\"Assassin Boots\",\"color\":\"white\"}", color: 0}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 101b, id: "minecraft:leather_leggings", tag: {display: {Name: "{\"text\":\"Assassin Leggings\",\"color\":\"white\"}", color: 0}, Unbreakable: 1}}]}] run item replace entity @s[scores={invis=0}] armor.legs with leather_leggings{display: {Name: "{\"text\":\"Assassin Leggings\",\"color\":\"white\"}", color: 0}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 102b, id: "minecraft:leather_chestplate", tag: {display: {Name: "{\"text\":\"Assassin Chestplate\",\"color\":\"white\"}", color: 0}, Unbreakable: 1}}]}] run item replace entity @s[scores={invis=0}] armor.chest with leather_chestplate{display: {Name: "{\"text\":\"Assassin Chestplate\",\"color\":\"white\"}", color: 0}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 103b, id: "minecraft:leather_helmet", tag: {display: {Name: "{\"text\":\"Assassin Helmet\",\"color\":\"white\"}", color: 0}, Unbreakable: 1}}]}] run item replace entity @s[scores={invis=0}] armor.head with leather_helmet{display: {Name: "{\"text\":\"Assassin Helmet\",\"color\":\"white\"}", color: 0}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:flint", tag: {display: {Name: "{\"text\":\"Assassin Flint\",\"color\":\"white\"}", color: 0}, Enchantments: [{id: sharpness, lvl: 10}]}}]}] run item replace entity @s[scores={invis=0}] hotbar.0 with flint{display: {Name: "{\"text\":\"Assassin Flint\",\"color\":\"white\"}", color: 0}, Enchantments: [{id: sharpness, lvl: 10}]}
execute unless entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Assassin Teleport\",\"color\":\"white\"}", color: 0}}}]}] run item replace entity @s[scores={invis=0}] weapon.offhand with carrot_on_a_stick{display: {Name: "{\"text\":\"Assassin Teleport\",\"color\":\"white\"}", color: 0}}

item replace entity @s[scores={tpcharges=4}] hotbar.8 with black_dye{display: {Name: "{\"text\":\"Teleport Charges\",\"color\":\"white\"}", color: 0}} 4
item replace entity @s[scores={tpcharges=3}] hotbar.8 with black_dye{display: {Name: "{\"text\":\"Teleport Charges\",\"color\":\"white\"}", color: 0}} 3
item replace entity @s[scores={tpcharges=2}] hotbar.8 with black_dye{display: {Name: "{\"text\":\"Teleport Charges\",\"color\":\"white\"}", color: 0}} 2
item replace entity @s[scores={tpcharges=1}] hotbar.8 with black_dye{display: {Name: "{\"text\":\"Teleport Charges\",\"color\":\"white\"}", color: 0}} 1
clear @s[scores={tpcharges=0}] black_dye{display: {Name: "{\"text\":\"Teleport Charges\",\"color\":\"white\"}", color: 0}}

