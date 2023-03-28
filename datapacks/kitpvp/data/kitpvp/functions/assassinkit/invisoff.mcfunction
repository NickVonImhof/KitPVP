effect clear @s speed
effect clear @s invisibility
effect clear @s resistance
effect clear @s regeneration
scoreboard players set @s cleared0 1
scoreboard players set @s invis 0

item replace entity @s armor.feet with leather_boots{display: {Name: "{\"text\":\"Assassin Boots\",\"color\":\"white\"}", color: 0}, Unbreakable: 1}
item replace entity @s armor.legs with leather_leggings{display: {Name: "{\"text\":\"Assassin Leggings\",\"color\":\"white\"}", color: 0}, Unbreakable: 1}
item replace entity @s armor.chest with leather_chestplate{display: {Name: "{\"text\":\"Assassin Chestplate\",\"color\":\"white\"}", color: 0}, Unbreakable: 1}
item replace entity @s armor.head with leather_helmet{display: {Name: "{\"text\":\"Assassin Helmet\",\"color\":\"white\"}", color: 0}, Unbreakable: 1}
stopsound @a[distance=..20] player minecraft:item.armor.equip_leather
particle smoke ~ ~1 ~ .3 .5 .3 .04 60