
# Flame power

scoreboard players set @s[scores={Carrot=1..}] pressRC 5
scoreboard players remove @s[scores={pressRC=1..}] pressRC 1
execute if entity @s[scores={pressRC=1..,Mana=21..},tag=!silenced] run function kitpvp:pyrokit/inferno
effect clear @s[scores={pressRC=0},nbt={ActiveEffects: [{Id: 28}]}] slow_falling


# Add mana when not burning shit
# base mana is 10 + whatever the cost is. below included, above excluded
# 982 (included) and under is valid mana
execute if entity @s[scores={Mana=..982,pressRC=0}] run xp add @s 8 points
execute store result score @s Mana run data get entity @s XpP 1000
xp set @s[gamemode=creative] 995 points


# Fireball power
# add timer, fireball, all that jazz

execute if entity @s[scores={timer0=1..},tag=!silenced,nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Pyro Inferno\",\"color\":\"gold\"}"}}}}] run tellraw @s {"text":"Fireball is still on cooldown.","italic":true,"color":"aqua"}
execute if entity @s[scores={timer0=0},tag=!silenced,nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Pyro Inferno\",\"color\":\"gold\"}"}}}}] run function kitpvp:pyrokit/fireball
execute if entity @s[nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Pyro Inferno\",\"color\":\"gold\"}"}}}}] run clear @s carrot_on_a_stick{display: {Name: "{\"text\":\"Pyro Inferno\",\"color\":\"gold\"}"}}
scoreboard players remove @s[scores={timer0=1..}] timer0 1


# Effects for player's entities
tag @s add is_player
execute as @e[tag=pyroflame,type=small_fireball] if score @s uuid = @a[tag=is_player,limit=1] uuid run tag @s add myflame
execute as @e[tag=pyroball,type=fireball] if score @s uuid = @a[tag=is_player,limit=1] uuid run tag @s add myball
execute as @e[tag=myflame] at @s run function kitpvp:pyrokit/flameeffects
execute as @e[tag=myball] at @s run function kitpvp:pyrokit/balleffects
tag @s remove is_player



# Shift explosion power
effect clear @s[tag=hasresistance] resistance
tag @s[tag=hasresistance] remove hasresistance
scoreboard players add @s[scores={Sneak=1..,timer1=0},tag=!silenced] explosionsize 1
tellraw @s[scores={Sneak=1,timer1=1..},tag=!notified] {"text":"Explode is still on cooldown.","italic":true,"color":"aqua"}
tag @s[scores={Sneak=1,timer1=1..},tag=!nodified] add notified
execute if entity @s[scores={explosionsize=1..}] run function kitpvp:pyrokit/explosioncharging
execute if entity @s[scores={Sneak=0,explosionsize=1..}] run function kitpvp:pyrokit/detonate
scoreboard players remove @s[scores={timer1=1..}] timer1 1
tag @s[tag=notified,scores={timer1=0}] remove notified



effect give @s fire_resistance 1000000 0 true

execute unless entity @s[nbt={Inventory: [{Slot: 100b, id: "minecraft:leather_boots", tag: {display: {Name: "{\"text\":\"Pyro Boots\",\"color\":\"gold\"}", color: 16755200}, Unbreakable: 1}}]}] run item replace entity @s armor.feet with leather_boots{display: {Name: "{\"text\":\"Pyro Boots\",\"color\":\"gold\"}", color: 16755200}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 101b, id: "minecraft:leather_leggings", tag: {display: {Name: "{\"text\":\"Pyro Leggings\",\"color\":\"gold\"}", color: 16755200}, Unbreakable: 1}}]}] run item replace entity @s armor.legs with leather_leggings{display: {Name: "{\"text\":\"Pyro Leggings\",\"color\":\"gold\"}", color: 16755200}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 102b, id: "minecraft:leather_chestplate", tag: {display: {Name: "{\"text\":\"Pyro Chestplate\",\"color\":\"gold\"}", color: 16755200}, Unbreakable: 1}}]}] run item replace entity @s armor.chest with leather_chestplate{display: {Name: "{\"text\":\"Pyro Chestplate\",\"color\":\"gold\"}", color: 16755200}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 103b, id: "minecraft:leather_helmet", tag: {display: {Name: "{\"text\":\"Pyro Helmet\",\"color\":\"gold\"}", color: 16755200}, Unbreakable: 1}}]}] run item replace entity @s armor.head with leather_helmet{display: {Name: "{\"text\":\"Pyro Helmet\",\"color\":\"gold\"}", color: 16755200}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:blaze_rod", tag: {display: {Name: "{\"text\":\"Pyro Blazerod\",\"color\":\"gold\"}"}, Enchantments: [{id: sharpness, lvl: 5}, {id: fire_aspect, lvl: 3}]}}]}] run item replace entity @s hotbar.0 with blaze_rod{display: {Name: "{\"text\":\"Pyro Blazerod\",\"color\":\"gold\"}"}, Enchantments: [{id: sharpness, lvl: 5}, {id: fire_aspect, lvl: 3}]}
execute unless entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Pyro Inferno\",\"color\":\"gold\"}"}}}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{display: {Name: "{\"text\":\"Pyro Inferno\",\"color\":\"gold\"}"}}