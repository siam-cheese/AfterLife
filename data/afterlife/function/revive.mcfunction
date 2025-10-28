tp @a[scores={HLives=-2}] @e[tag=zombieSpawn,limit=1]
execute as @a[scores={HLives=-2}] run attribute @s generic.max_health base set 14
gamemode survival @a[scores={HLives=-2}]
effect give @a[scores={HLives=-2}] resistance 5 5 true
scoreboard players set @a[scores={HLives=-2}] HLives -1
scoreboard players set #reviveTimer numbers 6000