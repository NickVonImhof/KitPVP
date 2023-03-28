scoreboard players remove @s lifetimer0 1

execute if entity @s[scores={lifetimer0=0}] run fill ^-1 ^-1 ^ ^1 ^1 ^ air replace blue_ice
execute if entity @s[scores={lifetimer0=0}] run playsound block.glass.break player @a ~ ~ ~ 1 1.3
kill @s[scores={lifetimer0=0}]


tag @s remove myicemarker