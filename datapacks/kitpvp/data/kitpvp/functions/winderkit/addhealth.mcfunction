execute if score @s Health < @s rewindhealth run effect give @s regeneration 1000000 0 true
execute if score @s rewindhealth <= @s Health run effect clear @s regeneration
execute if score @s rewindhealth <= @s Health run scoreboard players reset @s rewindhealth
