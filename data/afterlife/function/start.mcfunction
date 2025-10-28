function afterlife:reset
kill @e[tag=zombieSpawn]
summon item_display ~ ~ ~ {Tags:["zombieSpawn"]}
execute as @a run scoreboard players set @s HLives 3