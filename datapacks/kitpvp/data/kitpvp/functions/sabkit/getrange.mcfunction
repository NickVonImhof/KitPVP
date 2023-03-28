scoreboard players set @s[nbt={SelectedItemSlot: 0}] hotbarslot 0
scoreboard players set @s[nbt={SelectedItemSlot: 1}] hotbarslot 1
scoreboard players set @s[nbt={SelectedItemSlot: 2}] hotbarslot 2
scoreboard players set @s[nbt={SelectedItemSlot: 3}] hotbarslot 3
scoreboard players set @s[nbt={SelectedItemSlot: 4}] hotbarslot 4
scoreboard players set @s[nbt={SelectedItemSlot: 5}] hotbarslot 5
scoreboard players set @s[nbt={SelectedItemSlot: 6}] hotbarslot 6
scoreboard players set @s[nbt={SelectedItemSlot: 7}] hotbarslot 7
scoreboard players set @s[nbt={SelectedItemSlot: 8}] hotbarslot 8

# 14 points mana base
execute anchored eyes if block ^ ^ ^1 air run scoreboard players set @s range 1
execute if entity @s[scores={range=1}] anchored eyes if block ^ ^ ^2 air run scoreboard players set @s range 2
execute if entity @s[scores={hotbarslot=0..,range=2}] anchored eyes if block ^ ^ ^3 air run scoreboard players set @s range 3
execute if entity @s[scores={hotbarslot=1..,range=3,Mana=15..}] anchored eyes if block ^ ^ ^4 air run scoreboard players set @s range 4
execute if entity @s[scores={hotbarslot=2..,range=4,Mana=15..}] anchored eyes if block ^ ^ ^5 air run scoreboard players set @s range 5
execute if entity @s[scores={hotbarslot=3..,range=5,Mana=16..}] anchored eyes if block ^ ^ ^6 air run scoreboard players set @s range 6
execute if entity @s[scores={hotbarslot=4..,range=6,Mana=16..}] anchored eyes if block ^ ^ ^7 air run scoreboard players set @s range 7
execute if entity @s[scores={hotbarslot=5..,range=7,Mana=17..}] anchored eyes if block ^ ^ ^8 air run scoreboard players set @s range 8
execute if entity @s[scores={hotbarslot=6..,range=8,Mana=17..}] anchored eyes if block ^ ^ ^9 air run scoreboard players set @s range 9
execute if entity @s[scores={hotbarslot=7..,range=9,Mana=18..}] anchored eyes if block ^ ^ ^10 air run scoreboard players set @s range 10
execute if entity @s[scores={hotbarslot=8..,range=10,Mana=18..}] anchored eyes if block ^ ^ ^11 air run scoreboard players set @s range 11

execute if entity @s[scores={range=1..}] run function kitpvp:sabkit/dotelekenesis

xp add @s[scores={range=1..3}] -3 points
xp add @s[scores={range=4..5}] -4 points
xp add @s[scores={range=6..7}] -5 points
xp add @s[scores={range=8..9}] -6 points
xp add @s[scores={range=10..11}] -7 points
execute store result score @s Mana run data get entity @s XpP 1000



scoreboard players reset @s hotbarslot
scoreboard players reset @s range


