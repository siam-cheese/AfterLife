
#count deaths
execute as @a[scores={deathTrigger=1..}] run scoreboard players operation @s HLives -= #1 numbers

# trigger start
scoreboard players enable @a lifeCount
scoreboard players enable @a withDrawLife
scoreboard players enable @a[tag=hitMen] claimBoogeyKill

execute as @a[scores={lifeCount=1..}] run function afterlife:get_life_count
execute as @a[scores={withDrawLife=1..,HLives=..1}] run tellraw @s {"text":"You cannot withdraw your final life.","color": "red"}
execute as @a[scores={withDrawLife=1..,HLives=2..}] at @s run function afterlife:withdraw_life

execute as @a[scores={claimBoogeyKill=1..},tag=hitMen] at @s run function afterlife:boogey_success

scoreboard players set @a lifeCount 0
scoreboard players set @a withDrawLife 0
scoreboard players set @a claimBoogeyKill 0

execute as @a[nbt={active_effects:[{"id":"minecraft:mining_fatigue","amplifier":24b}]},scores={HLives=1..}] at @s run function afterlife:gain_life
execute as @a[nbt={active_effects:[{"id":"minecraft:mining_fatigue","amplifier":24b}]},scores={HLives=..0}] at @s run tellraw @s {"text": "Yummy!", "color": "gold"}
#trigger end


# zombie revive logic
execute as @a[scores={HLives=0}] run team join zombies @s
execute as @a[scores={HLives=0}] run tellraw @s {"text": "You have lost your last life, you are now a zombie. Your ONLY allies and teamates are other zombies. Every 5 minutes any dead zombies will respawn.", "color": "dark_green"}
execute as @a[scores={HLives=0}] run scoreboard players set @s HLives -2
execute as @a[scores={HLives=-2}] run gamemode spectator @s

scoreboard players operation #reviveTimer numbers -= #1 numbers
scoreboard players operation @a[scores={HLives=-2}] zombieTimer = #reviveTimer numbers
scoreboard players operation @a[scores={HLives=-2}] zombieTimer /= #20 numbers
execute as @a[scores={HLives=-2}] run title @s actionbar [{"score":{"name":"@s","objective":"zombieTimer"},"color":"gray"},{"text": " seconds until revive.","color": "gray"}]

execute if score #reviveTimer numbers matches ..0 run function afterlife:revive

effect give @a[team=zombies] weakness 5 1 true

#zombie end logic

#team/life color
team join life4plus @a[scores={HLives=4..}]
team join life3 @a[scores={HLives=3}]
team join life2 @a[scores={HLives=2}]
team join life1 @a[scores={HLives=1}]
#*team color end

#hitmen

execute as @a[tag=target,scores={deathTrigger=1..}] run tellraw @a[tag=hitMen] ["",{"text":"The target "},{"selector":"@s"},{"text":" has been eliminated, if, and only if, this was your target, and you played a role in this death, are you allowed to do /trigger claimBoogeyKill and recieve your prize "}]
execute as @a[tag=target,scores={deathTrigger=1..}] run tag @s remove target

execute as @a[scores={hitMenAnim=2..}] run scoreboard players operation @s hitMenAnim -= #1 numbers
title @a[scores={hitMenAnim=122}] times 20 100 20
title @a[scores={hitMenAnim=120}] title {"text":"You are.","color":"green"}
title @a[scores={hitMenAnim=80}] title {"text":"You are..","color":"yellow"}
title @a[scores={hitMenAnim=40}] title {"text":"You are...","color":"red"}

execute as @a[scores={hitMenAnim=120}] at @s run playsound ui.button.click ambient @s ~ ~ ~
execute as @a[scores={hitMenAnim=80}] at @s run playsound ui.button.click ambient @s ~ ~ ~
execute as @a[scores={hitMenAnim=40}] at @s run playsound ui.button.click ambient @s ~ ~ ~
execute as @a[scores={hitMenAnim=20}] at @s run playsound entity.warden.sonic_charge ambient @s ~ ~ ~ .5 2


execute as @a[scores={hitMenAnim=3}] store result score @s isHitMen run random value 1..2
execute as @a[scores={hitMenAnim=3,HLives=..1}] run scoreboard players set @s isHitMen 2

execute as @a[scores={hitMenAnim=3,isHitMen=1}] at @s run function afterlife:boogey_select
execute as @a[scores={hitMenAnim=3,isHitMen=2..}] run title @s title {"text":"NOT the boogeyman","color":"green"}
execute as @a[scores={hitMenAnim=3,isHitMen=2..}] at @s run playsound block.amethyst_block.break ambient @s ~ ~ ~ 1 .7
#hitmen end




scoreboard players reset @a deathTrigger







