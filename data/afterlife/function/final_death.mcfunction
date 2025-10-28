team join zombies @s
tellraw @s {"text": "You have lost your last life, you are now a zombie. Your ONLY allies and teamates are other zombies. Every 5 minutes any dead zombies will respawn.", "color": "dark_green"}
scoreboard players set @s HLives -2
summon lightning_bolt