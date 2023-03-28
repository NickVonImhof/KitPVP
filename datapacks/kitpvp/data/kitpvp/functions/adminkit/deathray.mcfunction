# RAYTRACE function leaves a targeted mob, be that a marker, or an actual mob.
# _____________ RAYTRACE  ____________
scoreboard players set @s recurse_depth 0
tag @s add is_player
execute anchored eyes run function kitpvp:adminkit/raytrace_a
tag @s remove is_player

execute at @e[tag=targeted_mob,type=!marker,limit=1] run playsound minecraft:entity.wither.break_block neutral @a ~ ~ ~ 1 0.5
# playsound minecraft:entity.wither.shoot neutral @a ~ ~ ~ 0.5 1.8
playsound minecraft:entity.cat.ambient player @a ~ ~ ~ 1 1

tag @e[tag=targeted_mob,limit=1,type=!drowned,type=!husk,type=!phantom,type=!zombie,type=!zombie_villager,type=!zombie_horse,type=!zombified_piglin,type=!skeleton,type=!skeleton_horse,type=!wither_skeleton,type=!wither,type=!stray,type=!zoglin] add not_undead
effect give @e[tag=not_undead,tag=targeted_mob] instant_damage 1 100 true
effect give @e[tag=!not_undead,tag=targeted_mob] instant_health 1 100 true
execute at @e[tag=targeted_mob,type=!marker,limit=1] run particle dust 0 0 0 1 ~ ~1 ~ .55 .55 .55 0 105

kill @e[type=marker,tag=targeted_mob]
tag @e[tag=not_undead] remove not_undead
tag @e[tag=targeted_mob] remove targeted_mob
# ____________________________________