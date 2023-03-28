
scoreboard players set @s timespeed 0

item replace entity @s hotbar.0 with emerald{display: {Name: "{\"text\":\"Timewinder Emerald\",\"color\":\"green\"}"}, Enchantments: [{id: sharpness, lvl: 5}]}

effect clear @s jump_boost
effect clear @s levitation
effect clear @s speed
effect clear @s haste
effect clear @s regeneration