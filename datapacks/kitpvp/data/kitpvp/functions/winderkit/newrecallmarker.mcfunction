summon marker ~ ~ ~ {Tags: ["recallmarker", "current"]}
execute store result score @e[tag=current,limit=1] uuid run scoreboard players get @s uuid
scoreboard players set @e[tag=current] timer0 0
execute store result score @e[tag=current,limit=1] rewindhealth run scoreboard players get @s Health
tag @e[tag=current] remove current

