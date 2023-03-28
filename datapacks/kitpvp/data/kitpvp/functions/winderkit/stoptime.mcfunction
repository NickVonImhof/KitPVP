summon marker ~ ~1 ~ {Tags: ["timestopmarker", "center", "newmarker"]}

summon marker ~3 ~1 ~6 {Tags: ["timestopmarker", "frontleft", "newmarker"]}
summon marker ~-3 ~1 ~6 {Tags: ["timestopmarker", "frontright", "newmarker"]}
execute as @e[type=marker,limit=1,tag=newmarker,tag=frontright] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,limit=1,tag=newmarker,tag=frontleft]
summon marker ~-6 ~1 ~ {Tags: ["timestopmarker", "right", "newmarker"]}
execute as @e[type=marker,limit=1,tag=newmarker,tag=right] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,limit=1,tag=newmarker,tag=frontright]
summon marker ~-3 ~1 ~-6 {Tags: ["timestopmarker", "backright", "newmarker"]}
execute as @e[type=marker,limit=1,tag=newmarker,tag=backright] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,limit=1,tag=newmarker,tag=right]
summon marker ~3 ~1 ~-6 {Tags: ["timestopmarker", "backleft", "newmarker"]}
execute as @e[type=marker,limit=1,tag=newmarker,tag=backleft] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,limit=1,tag=newmarker,tag=backright]
summon marker ~6 ~1 ~ {Tags: ["timestopmarker", "left", "newmarker"]}
execute as @e[type=marker,limit=1,tag=newmarker,tag=left] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,limit=1,tag=newmarker,tag=backleft]
execute as @e[type=marker,limit=1,tag=newmarker,tag=frontleft] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,limit=1,tag=newmarker,tag=left]

execute at @e[type=marker,limit=1,tag=newmarker,tag=center] run stopsound @a[distance=..20] * minecraft:block.beacon.activate
execute at @e[type=marker,limit=1,tag=newmarker,tag=center] run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 .5

execute store result score @e[tag=newmarker] uuid run scoreboard players get @s uuid
tag @e[tag=newmarker] remove newmarker

tag @s add stopping