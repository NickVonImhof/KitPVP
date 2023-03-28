tag @s remove pyro

scoreboard players reset @s Mana
scoreboard players reset @s pressRC
scoreboard players reset @s timer0
scoreboard players reset @s explosionsize
scoreboard players reset @s timer0
scoreboard players reset @s timer1

effect clear @s fire_resistance
effect clear @s slow_falling
effect clear @s[tag=notified] resistance
tag @s[tag=notified] remove resistance

tag @s add is_player
execute as @e[tag=pyroflame,type=small_fireball] if score @s uuid = @a[tag=is_player,limit=1] uuid run tag @s add myflame
execute as @e[tag=pyroball,type=fireball] if score @s uuid = @a[tag=is_player,limit=1] uuid run tag @s add myball
tag @s remove is_player
kill @e[tag=myflame]
kill @e[tag=myball]

tag @s[tag=notified] remove notified