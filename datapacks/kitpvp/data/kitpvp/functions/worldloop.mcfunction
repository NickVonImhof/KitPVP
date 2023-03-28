execute as @a[tag=!initiated] run function kitpvp:initiation
execute as @a[tag=silenced] at @s run particle crit ~ ~1 ~ 0 0 0 .3 1 normal
execute as @e[tag=kit,name="Admin"] run function kitpvp:adminkit/armorstand

# execute at @e[tag=kit,name="Witherborn",limit=1] as @a[distance=..1] run function kitpvp:silence

execute as @a[tag=flyer] at @s run function kitpvp:flyerkit/flyer
execute as @a[tag=assassin] at @s run function kitpvp:assassinkit/assassin
execute as @a[tag=admin] at @s run function kitpvp:adminkit/admin
execute as @a[tag=pyro] at @s run function kitpvp:pyrokit/pyro
execute as @a[tag=sab] at @s run function kitpvp:sabkit/sab
execute as @a[tag=winder] at @s run function kitpvp:winderkit/winder
execute as @a[tag=cryo] at @s run function kitpvp:cryokit/cryo

execute at @e[tag=kit,type=armor_stand,name="No Kit",limit=1,sort=nearest] as @a[distance=..1,gamemode=!spectator] run function kitpvp:leavekits
execute at @e[tag=kit,type=armor_stand,name="Flyer",limit=1,sort=nearest] as @a[distance=..1,tag=!flyer,gamemode=!spectator] run function kitpvp:flyerkit/flyerjoin
execute at @e[tag=kit,type=armor_stand,name="Assassin",limit=1,sort=nearest] as @a[distance=..1,tag=!assassin,gamemode=!spectator] run function kitpvp:assassinkit/assassinjoin
execute at @e[tag=kit,type=armor_stand,name="Admin",limit=1,sort=nearest] as @a[distance=..1,tag=!admin,gamemode=!spectator] run function kitpvp:adminkit/adminjoin
execute at @e[tag=kit,type=armor_stand,name="Pyro",limit=1,sort=nearest] as @a[distance=..1,tag=!pyro,gamemode=!spectator] run function kitpvp:pyrokit/pyrojoin
execute at @e[tag=kit,type=armor_stand,name="Saboteur",limit=1,sort=nearest] as @a[distance=..1,tag=!sab,gamemode=!spectator] run function kitpvp:sabkit/sabjoin
execute at @e[tag=kit,type=armor_stand,name="Timewinder",limit=1,sort=nearest] as @a[distance=..1,tag=!winder,gamemode=!spectator] run function kitpvp:winderkit/winderjoin
execute at @e[tag=kit,type=armor_stand,name="Cryo",limit=1,sort=nearest] as @a[distance=..1,tag=!cryo,gamemode=!spectator] run function kitpvp:cryokit/cryojoin

scoreboard players set @a[scores={Sneak=1..}] Sneak 0
scoreboard players reset @a[scores={Damage=1..}] Damage
scoreboard players reset @a[scores={Sprint=1..},tag=!assin] Sprint
scoreboard players reset @a[scores={Carrot=1..}] Carrot

xp set @a[gamemode=creative] 990 points
execute as @a[scores={Food=..19}] run effect give @s saturation 1 0 true
kill @e[type=experience_orb]

# data modify block ~ ~ ~ ExitPortal merge value {X:-88,Y:79,Z:-209}