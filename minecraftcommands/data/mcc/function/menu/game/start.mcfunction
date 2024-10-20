
function mcc:menu/game/reset_other_games

execute if score SELECTED_GAME mcc.MENU matches 0..2 run function mcc:menu/game/mob/add_containement

execute if score SELECTED_GAME mcc.MENU matches 0 positioned 30 74 -9 run function mcc:menu/game/mob/panda
execute if score SELECTED_GAME mcc.MENU matches 1 positioned 30 74 -9 run function mcc:menu/game/mob/sky
execute if score SELECTED_GAME mcc.MENU matches 2 positioned 30 74 -9 run function mcc:menu/game/mob/seker
execute if score SELECTED_GAME mcc.MENU matches 3 run function mcc:menu/game/switch_vent
execute if score SELECTED_GAME mcc.MENU matches 4 run function mcc:anim/switch_stair
execute if score SELECTED_GAME mcc.MENU matches 5 positioned 26 82 -15 run effect give @a[dx=8,dy=2,dz=8] minecraft:levitation 1 10 true

scoreboard players operation GAME_CD mcc.MENU = GAME_CD_SETTING mcc.MENU
scoreboard players add GAME_CD mcc.MENU 1
execute store result storage mcc macro.time int 1 run scoreboard players get GAME_CD mcc.MENU
scoreboard players remove GAME_CD mcc.MENU 1

function mcc:menu/game/delay_update with storage mcc macro