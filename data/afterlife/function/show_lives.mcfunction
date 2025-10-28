execute store result score @s HLives run random value 2..5

title @a times 0 20 0
title @a[scores={HLives=2}] title {"score":{"name":"@s","objective":"HLives"},"color":"yellow"}
title @a[scores={HLives=3}] title {"score":{"name":"@s","objective":"HLives"},"color":"green"}
title @a[scores={HLives=4}] title {"score":{"name":"@s","objective":"HLives"},"color":"dark_green"}
title @a[scores={HLives=5}] title {"score":{"name":"@s","objective":"HLives"},"color":"dark_green"}

playsound ui.button.click master @s ~ ~ ~ .5 1