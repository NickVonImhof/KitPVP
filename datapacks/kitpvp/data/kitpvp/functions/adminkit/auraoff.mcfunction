
scoreboard players set @s silencing_mode 0
item replace entity @s hotbar.0 with totem_of_undying{display: {Name: "{\"text\":\"Admin Totem\",\"color\":\"white\"}"}, Enchantments: [{id: sharpness, lvl: 10}]}

stopsound @a[distance=..150] player entity.cat.purr