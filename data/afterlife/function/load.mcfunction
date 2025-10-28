scoreboard objectives add HLives dummy
scoreboard objectives add deathTrigger deathCount

scoreboard objectives add hitMenAnim dummy
scoreboard objectives add isHitMen dummy
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule showDeathMessages false

scoreboard objectives add numbers dummy
scoreboard players set #1 numbers 1
scoreboard players set #20 numbers 20

scoreboard objectives add zombieTimer dummy
scoreboard players set spinRate numbers 1

scoreboard players set #reviveTimer numbers 60

scoreboard objectives add lifeCount trigger
scoreboard objectives add withDrawLife trigger
scoreboard objectives add claimBoogeyKill trigger

team add zombies
team modify zombies color dark_gray

team add life4plus
team modify life4plus color dark_green

team add life3
team modify life3 color green

team add life2
team modify life2 color yellow

team add life1
team modify life1 color red





