
scoreboard players reset @s wings
scoreboard players reset @s Mana
scoreboard players reset @s timer0
scoreboard players reset @s timer1

effect clear @s levitation
effect clear @s slow_falling

tag @s add is_player
execute as @e[tag=flyerprimary,type=arrow] if score @s uuid = @a[tag=is_player,limit=1] uuid run tag @s add myprimary
execute as @e[tag=flyerbomb,type=creeper] if score @s uuid = @a[tag=is_player,limit=1] uuid run tag @s add mybomb
tag @s remove is_player
kill @e[tag=myprimary]
kill @e[tag=mybomb]

tag @s remove flyer