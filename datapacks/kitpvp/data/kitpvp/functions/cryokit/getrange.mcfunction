
scoreboard players set @s recurse_depth 7
scoreboard players set @s range 0

execute anchored eyes if block ^ ^ ^1 air run function kitpvp:cryokit/range

function kitpvp:cryokit/createice


scoreboard players reset @s hotbarslot
scoreboard players reset @s range