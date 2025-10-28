tag @s add self
tag @a[scores={HLives=2..},tag=!self,limit=1] add targetTemp
tag @s remove self
tag @a[tag=targetTemp] add target
playsound entity.ravager.hurt ambient @s ~ ~ ~ 1 .5
title @s title {"text":"The Boogeyman","color":"red"}
tellraw @s ["",{"text":"You are the Boogeyman, you must kill one NON-RED player, if you fail to do so by the time the next Boogey is chosen you ar eput on your last life.","color":"red"}]
tag @s add hitMen
tag @a remove targetTemp