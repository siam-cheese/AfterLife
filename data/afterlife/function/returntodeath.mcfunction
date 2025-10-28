forceload add ~ ~
summon item_display ~ ~ ~ {Tags:["tpBack"]}
execute store result entity @e[tag=tpBack,sort=nearest,limit=1] Pos[0] double 1 run data get entity @s LastDeathLocation.pos[0]
tp @s @e[tag=tpBack,limit=1,sort=nearest]
execute store result entity @e[tag=tpBack,sort=nearest,limit=1] Pos[1] double 1 run data get entity @s LastDeathLocation.pos[1]
tp @s @e[tag=tpBack,limit=1,sort=nearest]
execute store result entity @e[tag=tpBack,sort=nearest,limit=1] Pos[2] double 1 run data get entity @s LastDeathLocation.pos[2]
tp @s @e[tag=tpBack,limit=1,sort=nearest]
execute if entity @e[tag=tpBack,distance=..1] run execute as @a[scores={HLives=0}] at @s run function charter_sm:begin_execution
execute if entity @e[tag=tpBack,distance=..1] run execute as @a[scores={HLives=0}] at @s run scoreboard players set @s HLives -1
kill @e[tag=tpBack]
