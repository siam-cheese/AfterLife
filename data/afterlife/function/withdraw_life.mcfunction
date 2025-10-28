give @a apple[custom_name=[{"text":"Life","italic":false,"color":"#e00078"}],lore=[[{"text":"A portion of a soul, in the palm of your hand","italic":false}]],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0,animation:none,sound:"minecraft:block.bell.resonate",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:mining_fatigue,duration:1,amplifier:24,show_particles:0b,show_icon:0b}]}]},item_model="minecraft:nether_star"]

scoreboard players operation @s HLives -= #1 numbers

playsound particle.soul_escape ambient @s ~ ~ ~ 1.5 2

tellraw @s ["",{"text":" You withdrew a life","color":"green"}]
