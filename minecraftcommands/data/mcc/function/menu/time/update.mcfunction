

data modify storage mcc temp.output set from block 24 72 -9 LastOutput
data modify storage mcc temp.time set string storage mcc temp.output 10 18

data modify storage mcc macro.time set value {}
data modify storage mcc macro.time.h set string storage mcc temp.output 10 12
data modify storage mcc macro.time.m set string storage mcc temp.output 13 15
data modify storage mcc macro.time.s set string storage mcc temp.output 16 18

function mcc:menu/time/to_score with storage mcc macro.time

scoreboard players operation UNIX mcc.VAR = DAY_OFFSET_UNIX mcc.VAR
scoreboard players operation UNIX mcc.VAR *= 86400 CONST
scoreboard players operation UNIX mcc.VAR += D mcc.VAR
scoreboard players operation UNIX mcc.VAR += OFFSET_UNIX mcc.VAR
scoreboard players operation UNIX mcc.VAR += BASE_UNIX mcc.VAR


execute store result score TIME mcc.VAR run time query daytime
function mcc:menu/update_sign_macro {t1:'"  Time  "',t2:[{"text":"UTC : "},{"storage":"mcc","nbt":"temp.time"}],t3:'[{"text":"MC : "},{"score":{"name":"TIME","objective":"mcc.VAR"}}]',t4:'[{"text":"UNIX:"},{"score":{"name":"UNIX","objective":"mcc.VAR"}}]'}
