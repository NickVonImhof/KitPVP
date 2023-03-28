xp set @s 130 levels
xp set @s 0 points
execute store result score @s uuid run data get entity @s UUID[0]
function kitpvp:leavekits
scoreboard players set @s Sneak 0

tag @s add initiated
