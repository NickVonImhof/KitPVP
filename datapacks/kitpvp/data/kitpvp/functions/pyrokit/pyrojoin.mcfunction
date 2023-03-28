function kitpvp:leavekits
tag @s add pyro

xp set @s 995 points
execute store result score @s Mana run data get entity @s XpP 1000

scoreboard players set @s pressRC 0
scoreboard players set @s timer0 0
scoreboard players set @s explosionsize 0
scoreboard players set @s timer1 0



