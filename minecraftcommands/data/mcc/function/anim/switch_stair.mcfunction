
scoreboard players add STAIR_STATE mcc.VAR 1
execute if score STAIR_STATE mcc.VAR matches 2.. run scoreboard players set STAIR_STATE mcc.VAR 0

execute if score STAIR_STATE mcc.VAR matches 0 run function mcc:anim/move_stair2 
execute if score STAIR_STATE mcc.VAR matches 1 run function mcc:anim/move_stair1