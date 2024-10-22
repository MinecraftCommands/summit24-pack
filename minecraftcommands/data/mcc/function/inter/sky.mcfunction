



execute store result score RANDOM_MSG mcc.VAR run random value 1..100

#tellraw @a ["" ,{"score":{"name":"RANDOM_MSG", "objective":"mcc.VAR"}}]

execute if score RANDOM_MSG mcc.VAR matches 2 run tellraw @s {"text":"I'm just a normal sheep"}
execute if score RANDOM_MSG mcc.VAR matches 3 run tellraw @s [{"text":"KILL ALL HUMAN","color":"dark_red"}]
execute if score RANDOM_MSG mcc.VAR matches 4 run tellraw @s {"text":"How far can you make you go?"}
execute if score RANDOM_MSG mcc.VAR matches 6 run tellraw @s {"text":"Do you really think this hurts me?"}

execute if score RANDOM_MSG mcc.VAR matches 10..12 run tellraw @s {"text":"This hit was actually so weak it healed me"}
execute if score RANDOM_MSG mcc.VAR matches 10..20 positioned ~-5 ~-5 ~-5 as @e[type=sheep,dx=10,dy=10,dz=10,tag=mcc.sky.sheep] at @s run function mcc:inter/sky_heal

execute if score RANDOM_MSG mcc.VAR matches 21..35 run data modify storage mcc ppos set from entity @s Pos
execute if score RANDOM_MSG mcc.VAR matches 21..35 positioned ~-5 ~-5 ~-5 as @e[type=minecart,dx=10,dy=10,dz=10,tag=mcc.sky.minecart.base] at @s run function mcc:inter/sky_move


advancement revoke @s only mcc:sky