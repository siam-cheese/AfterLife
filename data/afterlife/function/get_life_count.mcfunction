execute if score @s HLives matches 5 run title @s actionbar {"text":"You have 5 lives left","color":"dark_green"}
execute if score @s HLives matches 4 run title @s actionbar {"text":"You have 4 lives left","color":"dark_green"}
execute if score @s HLives matches 3 run title @s actionbar {"text":"You have 3 lives left","color":"green"}
execute if score @s HLives matches 2 run title @s actionbar {"text":"You have 2 lives left","color":"yellow"}
execute if score @s HLives matches 1 run title @s actionbar {"text":"You are on your final life","color":"red"}

execute if entity @s[scores={HLives=6..}] run title @s actionbar {"score":{"name":"@s","objective":"HLives"},"color":"dark_green"}
