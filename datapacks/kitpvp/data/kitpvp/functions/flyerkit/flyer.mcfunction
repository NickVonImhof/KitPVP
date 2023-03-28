
# Primary fire
execute if entity @s[scores={Carrot=1..,timer0=0},tag=!silenced] run function kitpvp:flyerkit/primaryfire
execute as @e[nbt={ActiveEffects: [{Id: 26, Amplifier: 1b}]}] at @s run function kitpvp:flyerkit/primaryhit
scoreboard players remove @s[scores={timer0=1..}] timer0 1

# Creeper power
execute if entity @s[scores={timer1=1..},tag=!silenced,nbt={FallFlying: 0b, SelectedItem: {id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Flyer Attack\",\"color\":\"gray\"}"}}}}] run tellraw @s {"text":"Flyer Bomb is still on cooldown.","italic":true,"color":"aqua"}
execute if entity @s[scores={timer1=1..},tag=!silenced,nbt={FallFlying: 1b, SelectedItem: {id: "minecraft:firework_rocket", tag: {display: {Name: "{\"text\":\"Flyer Rocket\",\"color\":\"gray\"}"}}}}] run tellraw @s {"text":"Flyer Bomb is still on cooldown.","italic":true,"color":"aqua"}
execute if entity @s[scores={timer1=0},tag=!silenced,nbt={FallFlying: 0b, SelectedItem: {id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Flyer Attack\",\"color\":\"gray\"}"}}}}] run function kitpvp:flyerkit/creeperbomb
execute if entity @s[scores={timer1=0},tag=!silenced,nbt={FallFlying: 1b, SelectedItem: {id: "minecraft:firework_rocket", tag: {display: {Name: "{\"text\":\"Flyer Rocket\",\"color\":\"gray\"}"}}}}] run function kitpvp:flyerkit/creeperbomb
execute if entity @s[nbt={FallFlying: 0b, SelectedItem: {id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Flyer Attack\",\"color\":\"gray\"}"}}}}] run clear @s carrot_on_a_stick{display: {Name: "{\"text\":\"Flyer Attack\",\"color\":\"gray\"}"}}
execute if entity @s[nbt={FallFlying: 1b, SelectedItem: {id: "minecraft:firework_rocket", tag: {display: {Name: "{\"text\":\"Flyer Rocket\",\"color\":\"gray\"}"}}}}] run clear @s firework_rocket{display: {Name: "{\"text\":\"Flyer Rocket\",\"color\":\"gray\"}"}}
scoreboard players remove @s[scores={timer1=1..}] timer1 1
playsound minecraft:block.note_block.pling player @s[scores={timer1=1},tag=!silenced] ~ ~ ~ .2 1.5

#execute if entity @s[scores={timer1=0},tag=!silenced] if entity @e[type=item,nbt={Item: {id: "minecraft:feather", tag: {display: {Name: "{\"text\":\"Flyer Feather\",\"color\":\"gray\"}", color: 11184810}, Enchantments: [{id: sharpness, lvl: 5}], Unbreakable: 1}}}] run function kitpvp:flyerkit/creeperbomb
#execute if entity @s[scores={timer1=1..}] if entity @e[type=item,nbt={Item: {id: "minecraft:feather", tag: {display: {Name: "{\"text\":\"Flyer Feather\",\"color\":\"gray\"}", color: 11184810}, Enchantments: [{id: sharpness, lvl: 5}], Unbreakable: 1}}}] run tellraw @s {"text":"Flyer Bomb is still on cooldown.","italic":true,"color":"aqua"}
#kill @e[type=item,nbt={Item: {id: "minecraft:feather", tag: {display: {Name: "{\"text\":\"Flyer Feather\",\"color\":\"gray\"}", color: 11184810}, Enchantments: [{id: sharpness, lvl: 5}], Unbreakable: 1}}}]



# Toggle wings
execute if entity @s[scores={wings=0,Mana=17..},nbt={OnGround: 0b},tag=!silenced] run function kitpvp:flyerkit/wingson
execute if entity @s[scores={wings=1},nbt={OnGround: 1b}] run function kitpvp:flyerkit/wingsoff
execute if entity @s[scores={wings=1,Mana=..16}] run function kitpvp:flyerkit/wingsoff
execute if entity @s[scores={wings=1}] run effect give @s resistance 100000 0 true
execute if entity @s[scores={wings=0},nbt={ActiveEffects: [{Id: 11}]}] run effect clear @s resistance

# Flying power
#execute if entity @s[nbt={FallFlying: 1b}] run particle minecraft:firework ^ ^ ^-1 0 0.05 0 0.022 9 force
execute if entity @s[nbt={FallFlying: 1b}] run particle minecraft:dust 0.769 0.769 0.769 1 ^-1.5 ^1 ^1 0 0.05 0 0.022 4 normal
execute if entity @s[nbt={FallFlying: 1b}] run particle minecraft:dust 0.769 0.769 0.769 1 ^1.5 ^1 ^1 0 0.05 0 0.022 4 normal
execute if entity @s[nbt={FallFlying: 1b}] run effect clear @s slow_falling
execute if entity @s[nbt={FallFlying: 1b}] run xp add @s -4 points
execute store result score @s Mana run data get entity @s XpP 1000

# Slow falling power
execute if entity @s[scores={Mana=12..},nbt={FallFlying: 0b},tag=!silenced] if block ~ ~-3 ~ air if block ~ ~-2 ~ air if block ~ ~-1 ~ air run effect give @s slow_falling 100000 0 true
execute if entity @s[nbt={ActiveEffects: [{Id: 28}]}] unless block ~ ~-3 ~ air unless block ~ ~-2 ~ air unless block ~ ~-1 ~ air run effect clear @s slow_falling
execute if entity @s[scores={Mana=..11},nbt={ActiveEffects: [{Id: 28}]}] run effect clear @s slow_falling
execute if entity @s[nbt={ActiveEffects: [{Id: 28}]}] run xp add @s -1 points
execute store result score @s Mana run data get entity @s XpP 1000

# Levitation power
execute if entity @s[scores={Sneak=1..,Mana=14..},tag=!silenced] run effect give @s levitation 100000 6 true
execute if entity @s[scores={Sneak=0},nbt={ActiveEffects: [{Id: 25}]}] run effect clear @s levitation
execute if entity @s[scores={Mana=..13},nbt={ActiveEffects: [{Id: 25}]}] run effect clear @s levitation
#execute if entity @s[nbt={ActiveEffects: [{Id: 25}]}] run particle minecraft:firework ^ ^ ^-1 0 0.05 0 0.022 4 normal
execute if entity @s[nbt={ActiveEffects: [{Id: 25}]}] run particle minecraft:dust 0.769 0.769 0.769 1 ^ ^ ^-1 0 0.05 0 0.022 4 normal
execute if entity @s[nbt={ActiveEffects: [{Id: 25}]}] run xp add @s -2 points
execute store result score @s Mana run data get entity @s XpP 1000


# Add mana when on ground
execute if entity @s[scores={Mana=..984},nbt={FallFlying: 0b}] unless block ~ ~-1.5 ~ air run xp add @s 6 points
execute store result score @s Mana run data get entity @s XpP 1000
xp set @s[gamemode=creative] 995 points

# base mana is 10 + whatever the cost is. below included, above excluded
# 984 (included) and under is valid mana


# Effects for player's entities
tag @s add is_player
execute as @e[tag=flyerprimary,type=arrow] if score @s uuid = @a[tag=is_player,limit=1] uuid run tag @s add myprimary
execute as @e[tag=flyerbomb,type=creeper] if score @s uuid = @a[tag=is_player,limit=1] uuid run tag @s add mybomb
execute as @e[tag=myprimary] at @s run function kitpvp:flyerkit/primaryeffects
execute as @e[tag=mybomb] at @s run function kitpvp:flyerkit/bombeffects
tag @s remove is_player


# Items
execute unless entity @s[nbt={Inventory: [{Slot: 100b, id: "minecraft:leather_boots", tag: {display: {Name: "{\"text\":\"Flyer Boots\",\"color\":\"gray\"}", color: 11184810}, Unbreakable: 1}}]}] run item replace entity @s armor.feet with leather_boots{display: {Name: "{\"text\":\"Flyer Boots\",\"color\":\"gray\"}", color: 11184810}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 101b, id: "minecraft:leather_leggings", tag: {display: {Name: "{\"text\":\"Flyer Leggings\",\"color\":\"gray\"}", color: 11184810}, Unbreakable: 1}}]}] run item replace entity @s[scores={wings=0}] armor.legs with leather_leggings{display: {Name: "{\"text\":\"Flyer Leggings\",\"color\":\"gray\"}", color: 11184810}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 102b, id: "minecraft:leather_chestplate", tag: {display: {Name: "{\"text\":\"Flyer Chestplate\",\"color\":\"gray\"}", color: 11184810}, Unbreakable: 1}}]}] run item replace entity @s[scores={wings=0}] armor.chest with leather_chestplate{display: {Name: "{\"text\":\"Flyer Chestplate\",\"color\":\"gray\"}", color: 11184810}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 102b, id: "minecraft:elytra", tag: {display: {Name: "{\"text\":\"Flyer Elytra\",\"color\":\"gray\"}", color: 11184810}, Unbreakable: 1}}]}] run item replace entity @s[scores={wings=1}] armor.chest with elytra{display: {Name: "{\"text\":\"Flyer Elytra\",\"color\":\"gray\"}", color: 11184810}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 103b, id: "minecraft:leather_helmet", tag: {display: {Name: "{\"text\":\"Flyer Helmet\",\"color\":\"gray\"}", color: 11184810}, Unbreakable: 1}}]}] run item replace entity @s armor.head with leather_helmet{display: {Name: "{\"text\":\"Flyer Helmet\",\"color\":\"gray\"}", color: 11184810}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:feather", tag: {display: {Name: "{\"text\":\"Flyer Feather\",\"color\":\"gray\"}", color: 11184810}, Enchantments: [{id: sharpness, lvl: 5}]}}]}] run item replace entity @s hotbar.0 with feather{display: {Name: "{\"text\":\"Flyer Feather\",\"color\":\"gray\"}", color: 11184810}, Enchantments: [{id: sharpness, lvl: 5}], Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Flyer Attack\",\"color\":\"gray\"}"}}}]}] run item replace entity @s[nbt={FallFlying: 0b}] weapon.offhand with carrot_on_a_stick{display: {Name: "{\"text\":\"Flyer Attack\",\"color\":\"gray\"}", color: 11184810}}
execute unless entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:firework_rocket", tag: {display: {Name: "{\"text\":\"Flyer Rocket\",\"color\":\"gray\"}"}}}]}] run item replace entity @s[nbt={FallFlying: 1b}] weapon.offhand with firework_rocket{display: {Name: "{\"text\":\"Flyer Rocket\",\"color\":\"gray\"}", color: 11184810}}


