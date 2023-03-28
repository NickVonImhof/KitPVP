scoreboard players set @s[x_rotation=60..100] snuck 1

execute as @s[scores={Sneak=1..}] unless entity @s[scores={snuck=1}] run function kitpvp:adminkit/leavespec