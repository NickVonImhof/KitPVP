

# Time speed power
execute if entity @s[scores={timespeed=0,Mana=14..},tag=!silenced,nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Timewinder Timestop\",\"color\":\"green\"}"}}}}] run function kitpvp:winderkit/timespeedon
execute if entity @s[scores={timespeed=1},tag=!silenced,nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Timewinder Timestop\",\"color\":\"green\"}"}}}}] run function kitpvp:winderkit/timespeedoff
execute if entity @s[nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Timewinder Timestop\",\"color\":\"green\"}"}}}}] run clear @s carrot_on_a_stick{display: {Name: "{\"text\":\"Timewinder Timestop\",\"color\":\"green\"}"}}
execute if entity @s[scores={timespeed=1,Mana=..13}] run function kitpvp:winderkit/timespeedoff

execute if entity @s[scores={timespeed=1},tag=!rewinding] run function kitpvp:winderkit/timespeedactive

# Restore mana when not timespeed
execute if entity @s[scores={timespeed=0,Mana=..986},tag=!stopping] run xp add @s 3 points
execute store result score @s Mana run data get entity @s XpP 1000
xp set @s[gamemode=creative] 995 points


# Recall power
# starts with long cooldown to let markers build up
scoreboard players remove @s[scores={timer0=1..}] timer0 1
execute if entity @s[tag=rewinding] run function kitpvp:winderkit/rewinding
execute if entity @s[scores={timer0=0}] run function kitpvp:winderkit/newrecallmarker
scoreboard players set @s[scores={timer0=0}] timer0 20
playsound minecraft:block.note_block.pling player @s[scores={timer1=1},tag=!silenced] ~ ~ ~ .2 1.5
execute if entity @s[scores={Sneak=1..,timer1=1..},tag=!silenced,gamemode=!spectator] unless entity @s[scores={snuck=1}] run tellraw @s {"text":"Rewind is still on cooldown.","italic":true,"color":"aqua"}
execute if entity @s[scores={Sneak=1..,timer1=1..},tag=!silenced,gamemode=!spectator] run scoreboard players set @s snuck 1
scoreboard players reset @s[scores={Sneak=0,snuck=1}] snuck
execute if entity @s[scores={Sneak=1..,timer1=0},tag=!silenced,tag=!rewinding] run function kitpvp:winderkit/rewind
scoreboard players remove @s[scores={timer1=1..}] timer1 1

execute if entity @s[scores={rewindhealth=0..}] run function kitpvp:winderkit/addhealth



# Time stop
scoreboard players set @s[scores={Carrot=1..}] pressRC 6
scoreboard players remove @s[scores={pressRC=1..}] pressRC 1
scoreboard players remove @s[scores={timer2=1..}] timer2 1
playsound minecraft:block.note_block.pling player @s[scores={timer2=1},tag=!silenced] ~ ~ ~ .2 1
execute if entity @s[scores={Carrot=1..,timer2=1..,Mana=14..},tag=!silenced] run tellraw @s {"text":"Pause time is still on cooldown.","italic":true,"color":"aqua"}
execute if entity @s[scores={Carrot=1..,timer2=0,Mana=14..},tag=!silenced,tag=!stopping] run function kitpvp:winderkit/stoptime
execute if entity @s[scores={pressRC=0},tag=stopping] run function kitpvp:winderkit/resumetime
execute if entity @s[scores={Mana=..13},tag=stopping] run function kitpvp:winderkit/resumetime

execute if entity @s[tag=stopping] run function kitpvp:winderkit/stoppingactive
# rest of commands are located under my entities.



# Player's entities (oh lord)
tag @s add is_player
execute as @e[tag=recallmarker,type=marker] if score @s uuid = @a[tag=is_player,limit=1,tag=!rewinding] uuid run tag @s add mymarker
execute as @e[tag=timestopmarker,type=marker] if score @s uuid = @a[tag=is_player,limit=1] uuid run tag @s add mystopmarker
execute as @e[tag=timestopped] if score @s winder_uuid_ref = @a[tag=is_player,limit=1] uuid run tag @s add mystopped

kill @e[type=marker,tag=mymarker,scores={timer0=200..}]
scoreboard players add @e[type=marker,tag=mymarker] timer0 1
execute if entity @a[tag=is_player,limit=1,tag=rewinding] at @e[type=marker,tag=mymarker] run particle dust 0 1 2 1 ~ ~ ~ .05 .05 .05 0 2
tag @e[type=marker,tag=mymarker] remove mymarker

execute as @e[type=marker,tag=mystopmarker,tag=!center] at @s run function kitpvp:winderkit/stopmarkereffects
execute as @e[type=marker,tag=mystopmarker,tag=center] at @s run function kitpvp:winderkit/centermarker
execute as @e[tag=mystopped] at @s run function kitpvp:winderkit/stoppedentity

tag @s remove is_player





# Items

execute unless entity @s[nbt={Inventory: [{Slot: 100b, id: "minecraft:leather_boots", tag: {display: {Name: "{\"text\":\"Timewinder Boots\",\"color\":\"green\"}", color: 5635925}, Unbreakable: 1}}]}] run item replace entity @s armor.feet with leather_boots{display: {Name: "{\"text\":\"Timewinder Boots\",\"color\":\"green\"}", color: 5635925}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 101b, id: "minecraft:leather_leggings", tag: {display: {Name: "{\"text\":\"Timewinder Leggings\",\"color\":\"green\"}", color: 5635925}, Unbreakable: 1}}]}] run item replace entity @s armor.legs with leather_leggings{display: {Name: "{\"text\":\"Timewinder Leggings\",\"color\":\"green\"}", color: 5635925}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 102b, id: "minecraft:leather_chestplate", tag: {display: {Name: "{\"text\":\"Timewinder Chestplate\",\"color\":\"green\"}", color: 5635925}, Unbreakable: 1}}]}] run item replace entity @s armor.chest with leather_chestplate{display: {Name: "{\"text\":\"Timewinder Chestplate\",\"color\":\"green\"}", color: 5635925}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 103b, id: "minecraft:leather_helmet", tag: {display: {Name: "{\"text\":\"Timewinder Helmet\",\"color\":\"green\"}", color: 5635925}, Unbreakable: 1}}]}] run item replace entity @s armor.head with leather_helmet{display: {Name: "{\"text\":\"Timewinder Helmet\",\"color\":\"green\"}", color: 5635925}, Unbreakable: 1}
execute unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:emerald", tag: {display: {Name: "{\"text\":\"Timewinder Emerald\",\"color\":\"green\"}"}, Enchantments: [{id: sharpness, lvl: 5}]}}]}] run item replace entity @s hotbar.0 with emerald{display: {Name: "{\"text\":\"Timewinder Emerald\",\"color\":\"green\"}"}, Enchantments: [{id: sharpness, lvl: 5}]}
execute unless entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {display: {Name: "{\"text\":\"Timewinder Timestop\",\"color\":\"green\"}"}}}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{display: {Name: "{\"text\":\"Timewinder Timestop\",\"color\":\"green\"}"}}