

execute store result score RANDOM_MSG mcc.VAR run random value 1..200

scoreboard players add PUFF_CLICK mcc.MENU 1
playsound minecraft:entity.puffer_fish.blow_up neutral @s

execute if score RANDOM_MSG mcc.VAR matches 2 run tellraw @s {"text":"The slot is not even properly aligned with me"}
execute if score RANDOM_MSG mcc.VAR matches 3 run tellraw @s [{"text":"Total pufferfish click : "}, {"score":{"name":"PUFF_CLICK", "objective":"mcc.MENU"}}]
execute if score RANDOM_MSG mcc.VAR matches 4 run tellraw @s {"text":"How many aced discord server are you really?"}
execute if score RANDOM_MSG mcc.VAR matches 5 run tellraw @s {"text":"Have you found the repeating command block?"}
execute if score RANDOM_MSG mcc.VAR matches 6 run tellraw @s {"text":"Ok but would it really be even just that much?"}
execute if score RANDOM_MSG mcc.VAR matches 7 run tellraw @s {"text":"Do you even understand why I'm inside a jukebox?"}
execute if score RANDOM_MSG mcc.VAR matches 8 run tellraw @s {"text":"That click didn't count :)"}
execute if score RANDOM_MSG mcc.VAR matches 8 run scoreboard players remove PUFF_CLICK mcc.MENU 1


advancement revoke @s only mcc:puffy