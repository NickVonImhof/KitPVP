function kitpvp:leavekits

xp set @s 995 points
execute store result score @s Mana run data get entity @s XpP 1000

scoreboard players set @s timespeed 0
scoreboard players set @s timer0 21
scoreboard players set @s timer1 201
scoreboard players set @s timer2 0
scoreboard players set @s pressRC 0

tag @s add winder