function kitpvp:leavekits

scoreboard players set @s timer0 40
scoreboard players set @s invis 0
scoreboard players set @s cleared0 0
scoreboard players set @s tpcharges 4

xp set @s 995 points
execute store result score @s Mana run data get entity @s XpP 1000

tag @s add assassin