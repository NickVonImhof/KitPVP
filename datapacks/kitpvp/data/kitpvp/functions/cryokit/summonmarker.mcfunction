scoreboard players remove @s recurse_depth 1

execute if entity @s[scores={recurse_depth=0}] run summon marker ~ ~ ~ {Tags: ["current", "cryoice"]}
execute if entity @s[scores={recurse_depth=0}] store result score @e[tag=current,limit=1,type=marker] uuid run scoreboard players get @s uuid
execute if entity @s[scores={recurse_depth=0}] run scoreboard players set @e[tag=current,limit=1,type=marker] lifetimer0 500
execute if entity @s[scores={recurse_depth=0}] at @e[tag=current,type=marker,limit=1] run tp @e[tag=current,type=marker,limit=1] ~ ~ ~ facing entity @s eyes


execute positioned ^ ^ ^1 unless entity @s[scores={recurse_depth=0}] run function kitpvp:cryokit/summonmarker
scoreboard players reset @s recurse_depth