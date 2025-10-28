tag @s add self
tag @a[scores={HLives=2..},tag=!self,limit=1] add targetTemp
tag @s remove self
tag @a[tag=targetTemp] add target
playsound entity.ravager.hurt ambient @s ~ ~ ~ 1 .5
title @s title {"text":"Assassin","color":"red"}
tellraw @s ["",{"text":"Your target is","color":"red"},{"text":" "},{"selector":"@a[tag=targetTemp,limit=1]"},{"text":". Once they have been killed, do /trigger claimAssasinKill to recieve your prize. Complete this task before they may die of natural causes or other hitmen. You may work with other hitmen, but you'd have to find them first, you may also not claim their kill. There is no punishment for failure, but there is great reward for success.","color":"red"}]
tag @s add hitMen
tag @a remove targetTemp