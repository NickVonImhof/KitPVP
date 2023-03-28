# Sneak teleport power
execute if entity @s[scores={Sneak=1..,Mana=14..},tag=!silenced] if block ^ ^ ^0.4 air run function kitpvp:sabkit/tpshort
effect clear @s[scores={Sneak=0}] levitation
effect clear @s[scores={Mana=..13}] levitation


# Telekenetic blast power
#execute if entity @s[scores={timer0=0},tag=!silenced,nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Saboteur Telekenesis\",\"color\":\"dark_blue\"}"}}}}] run function kitpvp:sabkit/forceblast
execute if entity @s[scores={timer0=0},tag=!silenced,nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Saboteur Telekenesis\",\"color\":\"dark_blue\"}"}}}}] run function kitpvp:sabkit/crush
execute if entity @s[nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Saboteur Telekenesis\",\"color\":\"dark_blue\"}"}}}}] run clear @s carrot_on_a_stick{display: {Name: "{\"text\":\"Saboteur Telekenesis\",\"color\":\"dark_blue\"}"}}
scoreboard players remove @s[scores={timer0=1..}] timer0 1

# Telekenesis power
scoreboard players set @s[scores={Carrot=1..}] pressRC 5
scoreboard players remove @s[scores={pressRC=1..}] pressRC 1

execute if entity @s[scores={pressRC=1..,Mana=14..},tag=!silenced] run function kitpvp:sabkit/getrange


# Effects for player's entities
tag @s add is_player
execute as @e[tag=sabblast,type=arrow] if score @s uuid = @a[tag=is_player,limit=1] uuid run tag @s add myblast
execute as @e[tag=sabtarget] if score @s sab_uuid_ref = @a[tag=is_player,limit=1] uuid run tag @s add mytarget
execute as @e[tag=myblast] at @s run function kitpvp:sabkit/forceeffects
execute as @e[tag=mytarget,tag=stopped] run function kitpvp:sabkit/loseentity
execute if entity @s[scores={pressRC=0}] if entity @e[tag=mytarget] run function kitpvp:rotation
execute if entity @a[tag=is_player,limit=1,scores={pressRC=0}] as @e[tag=mytarget] at @s run function kitpvp:sabkit/loseentity
execute if entity @a[tag=is_player,limit=1,scores={Mana=..13}] as @e[tag=mytarget] at @s run function kitpvp:sabkit/loseentity
execute if entity @s[scores={pressRC=0},tag=resetrot] run function kitpvp:sabkit/resetrot
execute as @e[tag=mytarget] at @s run function kitpvp:sabkit/targeteffects
tag @s remove is_player

kill @e[tag=myspot,type=marker,limit=1]


# Restore mana for self when not sneaking or right clicking
# Add mana when not burning shit
# base mana is 10 + whatever the cost is. below included, above excluded
# 990 (excluded), minus mana subtract amoutn, and under is valid mana
execute if entity @s[scores={Mana=..987,pressRC=0,Sneak=0}] run xp add @s 3 points
execute store result score @s Mana run data get entity @s XpP 1000
xp set @s[gamemode=creative] 995 points


execute unless entity @s[nbt={Inventory: [{Slot: 100b, id: "minecraft:leather_boots", tag: {display: {Name: "{\"text\":\"Saboteur Boots\",\"color\":\"dark_blue\"}", color: 170}, Unbreakable: 1}}]}] run item replace entity @s armor.feet with leather_boots{display: {Name: "{\"text\":\"Saboteur Boots\",\"color\":\"dark_blue\"}", color: 170}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 101b, id: "minecraft:leather_leggings", tag: {display: {Name: "{\"text\":\"Saboteur Leggings\",\"color\":\"dark_blue\"}", color: 170}, Unbreakable: 1}}]}] run item replace entity @s armor.legs with leather_leggings{display: {Name: "{\"text\":\"Saboteur Leggings\",\"color\":\"dark_blue\"}", color: 170}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 102b, id: "minecraft:leather_chestplate", tag: {display: {Name: "{\"text\":\"Saboteur Chestplate\",\"color\":\"dark_blue\"}", color: 170}, Unbreakable: 1}}]}] run item replace entity @s armor.chest with leather_chestplate{display: {Name: "{\"text\":\"Saboteur Chestplate\",\"color\":\"dark_blue\"}", color: 170}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 103b, id: "minecraft:leather_helmet", tag: {display: {Name: "{\"text\":\"Saboteur Helmet\",\"color\":\"dark_blue\"}", color: 170}, Unbreakable: 1}}]}] run item replace entity @s armor.head with leather_helmet{display: {Name: "{\"text\":\"Saboteur Helmet\",\"color\":\"dark_blue\"}", color: 170}, Unbreakable: 1}
execute unless entity @s[nbt={SelectedItem: {id: "minecraft:echo_shard", tag: {display: {Name: "{\"text\":\"Saboteur Shard\",\"color\":\"dark_blue\"}"}, Enchantments: [{id: sharpness, lvl: 5}]}}}] run clear @s echo_shard{display: {Name: "{\"text\":\"Saboteur Shard\",\"color\":\"dark_blue\"}"}, Enchantments: [{id: sharpness, lvl: 5}]}
execute unless entity @s[nbt={Inventory: [{id: "minecraft:echo_shard", tag: {display: {Name: "{\"text\":\"Saboteur Shard\",\"color\":\"dark_blue\"}"}, Enchantments: [{id: sharpness, lvl: 5}]}}]}] run item replace entity @s weapon.mainhand with echo_shard{display: {Name: "{\"text\":\"Saboteur Shard\",\"color\":\"dark_blue\"}"}, Enchantments: [{id: sharpness, lvl: 5}]}
execute unless entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Saboteur Telekenesis\",\"color\":\"dark_blue\"}"}}}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{display: {Name: "{\"text\":\"Saboteur Telekenesis\",\"color\":\"dark_blue\"}"}}