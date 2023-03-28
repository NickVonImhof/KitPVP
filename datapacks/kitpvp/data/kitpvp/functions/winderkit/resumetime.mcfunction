tag @s add is_player
execute as @e[tag=timestopmarker,type=marker] if score @s uuid = @a[tag=is_player,limit=1] uuid run tag @s add mystopmarker
execute as @e[scores={stop=0..}] if score @s winder_uuid_ref = @a[tag=is_player,limit=1] uuid run tag @s add mystopped
execute at @e[tag=mystopmarker,tag=center,limit=1] run stopsound @a[distance=..20] * minecraft:block.beacon.deactivate
execute at @e[tag=mystopmarker,tag=center,limit=1] run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1.8
execute as @e[tag=mystopped] run function kitpvp:winderkit/endstopping
kill @e[type=marker,tag=mystopmarker]
tag @s remove is_player

scoreboard players set @s timer2 50

tag @s remove stopping
effect clear @s weakness
effect clear @s mining_fatigue
