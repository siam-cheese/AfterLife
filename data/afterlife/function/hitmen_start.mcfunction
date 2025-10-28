scoreboard players set @a hitMenAnim 125

execute as @a[tag=hitMen] run tellraw @a ["",{"selector":"@a[tag=targetTemp,limit=1]"},{"text":" failed to complete their boogey kill, they have now been set to one life","color":"red"}]
execute as @a[tag=hitMen] run scoreboard players set @s HLives 1
tag @a[tag=hitMen] remove hitMen