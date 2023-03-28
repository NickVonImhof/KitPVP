item replace entity @s armor.chest with elytra{display: {Name: "{\"text\":\"Flyer Elytra\",\"color\":\"gray\"}", color: 11184810}, Unbreakable: 1}
clear @s leather_leggings{display: {Name: "{\"text\":\"Flyer Leggings\",\"color\":\"gray\"}", color: 11184810}, Unbreakable: 1}
stopsound @a[distance=..20] player minecraft:item.armor.equip_elytra

scoreboard players set @s wings 1
