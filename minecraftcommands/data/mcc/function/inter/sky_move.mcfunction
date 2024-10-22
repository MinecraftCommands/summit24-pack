

data modify storage mcc epos set from entity @s Pos

execute store result score PPOS_X mcc.VAR run data get storage mcc ppos[0] 100
execute store result score PPOS_Z mcc.VAR run data get storage mcc ppos[2] 100

execute store result score SKY_X mcc.VAR run data get storage mcc epos[0] 100
execute store result score SKY_Z mcc.VAR run data get storage mcc epos[2] 100


scoreboard players operation PPOS_X mcc.VAR -= SKY_X mcc.VAR
scoreboard players operation PPOS_Z mcc.VAR -= SKY_Zé mcc.VAR

data modify storage mcc rpos set value [0.0d, 0.0d, 0.0d]

execute store result storage mcc rpos[0] double 0.001 run scoreboard players get PPOS_X mcc.VAR
execute store result storage mcc rpos[2] double 0.001 run scoreboard players get PPOS_Z mcc.VAR


data modify entity @s Motion set from storage mcc rpos