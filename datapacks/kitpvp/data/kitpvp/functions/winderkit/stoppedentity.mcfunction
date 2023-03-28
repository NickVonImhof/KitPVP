# execute unless entity @s[scores={stop=1..2}] run particle dust 0 1 2 1 ~ ~1 ~ .2 .4 .2 0 10

tp @s[scores={stop=1}] ~ ~ ~ facing entity @e[type=marker,tag=arrowmarker,limit=1,sort=nearest]

tp @s[type=player] @s
effect give @s[type=player] resistance 100000 100 true
effect give @s[type=player] weakness 1000000 0 true
effect give @s[type=player] mining_fatigue 100000 0 true

tag @s remove mystopped

