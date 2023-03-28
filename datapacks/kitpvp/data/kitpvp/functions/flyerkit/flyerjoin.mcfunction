function kitpvp:leavekits

#item replace entity @s armor.head with leather_helmet{display: {Name: "{\"text\":\"Flyer Helmet\",\"color\":\"gray\"}", color: 11184810}, Unbreakable: 1}
#item replace entity @s armor.chest with leather_chestplate{display: {Name: "{\"text\":\"Flyer Chestplate\",\"color\":\"gray\"}", color: 11184810}, Unbreakable: 1}
#item replace entity @s armor.legs with leather_leggings{display: {Name: "{\"text\":\"Flyer Leggings\",\"color\":\"gray\"}", color: 11184810}, Unbreakable: 1}
#item replace entity @s armor.feet with leather_boots{display: {Name: "{\"text\":\"Flyer Boots\",\"color\":\"gray\"}", color: 11184810}, Unbreakable: 1}
#item replace entity @s weapon.mainhand with feather{display: {Name: "{\"text\":\"Flyer Feather\",\"color\":\"gray\"}", color: 11184810}, Enchantments: [{id: sharpness, lvl: 5}], Unbreakable: 1}
#item replace entity @s weapon.offhand with carrot_on_a_stick{display: {Name: "{\"text\":\"Flyer Rocket\",\"color\":\"gray\"}", color: 11184810}, Unbreakable: 1}


scoreboard players set @s wings 0
scoreboard players set @s timer0 0
scoreboard players set @s timer1 0

xp set @s 995 points
execute store result score @s Mana run data get entity @s XpP 1000

tag @s add flyer