$scoreboard players set H mcc.VAR $(h)
$scoreboard players set M mcc.VAR $(m)
$scoreboard players set S mcc.VAR $(s)


scoreboard players operation D mcc.VAR = H mcc.VAR 
scoreboard players operation D mcc.VAR *= 60 CONST
scoreboard players operation D mcc.VAR += M mcc.VAR
scoreboard players operation D mcc.VAR *= 60 CONST
scoreboard players operation D mcc.VAR += S mcc.VAR

scoreboard players operation DD mcc.VAR = D mcc.VAR
scoreboard players operation DD mcc.VAR -= -1 CONST
scoreboard players operation DD mcc.VAR += 86400 CONST

execute store result storage minecraft:mcc macro.unix int 1 run scoreboard players get DD mcc.VAR

function mcc:menu/time/schedule_macro with storage mcc macro.unix