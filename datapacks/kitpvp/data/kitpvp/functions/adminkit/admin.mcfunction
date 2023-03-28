# Death ray
execute if entity @s[scores={Carrot=1..}] run function kitpvp:adminkit/deathray

# Spec mode
execute if entity @s[scores={Sneak=1..}] unless entity @s[scores={snuck=1}] unless entity @s[scores={specmod=0..}] run function kitpvp:adminkit/enterspec
execute if entity @s[scores={specmod=0..}] run function kitpvp:adminkit/duringspec
scoreboard players set @s[scores={Sneak=0,specmod=0..,snuck=1}] snuck 0
execute if entity @s[scores={Sneak=0,snuck=1}] unless entity @s[scores={specmod=0..}] run scoreboard players reset @s snuck

# silencing power
execute if entity @s[scores={silencing_mode=0},nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Admin Killstick\",\"color\":\"white\"}"}}}}] run function kitpvp:adminkit/auraon
execute if entity @s[scores={silencing_mode=1},nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Admin Killstick\",\"color\":\"white\"}"}}}}] run function kitpvp:adminkit/auraoff
execute if entity @s[nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Admin Killstick\",\"color\":\"white\"}"}}}}] run clear @s carrot_on_a_stick{display: {Name: "{\"text\":\"Admin Killstick\",\"color\":\"white\"}"}}

execute if entity @s[scores={silencing_mode=1}] run function kitpvp:adminkit/auraactive

tag @s add is_player
execute as @a[tag=adminsilenced] if score @s admin_uuid_ref = @a[tag=is_player,limit=1] uuid run tag @s add mytarget
execute as @a[tag=mytarget] if entity @a[tag=is_player,scores={silencing_mode=0}] run function kitpvp:adminkit/losetarget
execute as @a[tag=mytarget] at @s unless entity @a[tag=is_player,distance=..8] run function kitpvp:adminkit/losetarget
tag @a[tag=adminsilenced,tag=mytarget] remove mytarget
tag @s remove is_player


execute unless entity @s[nbt={ActiveEffects: [{Id: 10}]}] run effect give @s regeneration 100000 1 true


# Items (including totem power)
execute if entity @s[gamemode=!spectator] run function kitpvp:adminkit/armorcolor
execute unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:totem_of_undying", tag: {display: {Name: "{\"text\":\"Admin Totem\",\"color\":\"white\"}"}, Enchantments: [{id: sharpness, lvl: 10}]}}]}] run item replace entity @s hotbar.0 with totem_of_undying{display: {Name: "{\"text\":\"Admin Totem\",\"color\":\"white\"}"}, Enchantments: [{id: sharpness, lvl: 10}]}
execute unless entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Admin Killstick\",\"color\":\"white\"}"}}}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{display: {Name: "{\"text\":\"Admin Killstick\",\"color\":\"white\"}"}}