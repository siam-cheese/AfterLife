scoreboard players set @a hitMenAnim 125
tellraw @a[tag=hitMen] {"text": "All bounties are now expired, you are no longer hitmen."}
tag @a[tag=hitMen] remove hitMen