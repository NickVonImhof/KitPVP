execute if entity @s[type=!arrow,type=!small_fireball,type=!fireball,type=!wither_skull] run particle dust 0.502 0.008 0.702 1 ~ ~ ~ .2 .2 .2 0 1 normal
execute if entity @s[type=!arrow,type=!small_fireball,type=!fireball,type=!wither_skull] run particle dust 0 0 0.925 1 ~ ~ ~ .2 .2 .2 0 3 normal

summon marker ~ ~ ~ {Tags: ["thistargetspot"]}
tp @e[type=marker,tag=thistargetspot,limit=1] ~ ~ ~ facing entity @e[tag=myspot,type=marker,limit=1]
tag @s add thistarget
execute as @e[type=marker,tag=thistargetspot,limit=1] at @s if block ^ ^ ^0.4 air run tp @e[tag=thistarget,limit=1] ^ ^ ^0.4
tag @s remove thistarget

kill @e[type=marker,tag=thistargetspot,limit=1]
tag @s remove mytarget

effect give @s levitation 100000 0 true