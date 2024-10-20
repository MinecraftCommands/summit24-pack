

execute if score SIGN_Y mcc.MENU matches 300..724 if score SIGN_X mcc.MENU matches 500.. run scoreboard players add SELECTED_GAME mcc.MENU 1
execute if score SIGN_Y mcc.MENU matches 300..724 if score SIGN_X mcc.MENU matches ..499 run scoreboard players remove SELECTED_GAME mcc.MENU 1

scoreboard players operation SELECTED_GAME mcc.MENU %= SELECTED_GAME_MOD mcc.MENU


execute store result score GAME_GT mcc.MENU run time query gametime
scoreboard players operation DELTA mcc.MENU = GAME_GT mcc.MENU
scoreboard players operation DELTA mcc.MENU -= GAME_LAST_GT mcc.MENU

scoreboard players operation GAME_CD mcc.MENU -= DELTA mcc.MENU
execute if score GAME_CD mcc.MENU matches ..-1 run scoreboard players set GAME_CD mcc.MENU 0

scoreboard players operation GAME_LAST_GT mcc.MENU = GAME_GT mcc.MENU

execute if entity @s if score SIGN_Y mcc.MENU matches ..250 if score SIGN_X mcc.MENU matches 300..700 if score GAME_CD mcc.MENU matches 0 run function mcc:menu/game/start


data modify storage mcc menu.selected_game1 set value ""

execute if score SELECTED_GAME mcc.MENU matches 0 run data modify storage mcc menu.selected_game2 set value "< Dark Souls >"
execute if score SELECTED_GAME mcc.MENU matches 1 run data modify storage mcc menu.selected_game2 set value "< Skyram >"
execute if score SELECTED_GAME mcc.MENU matches 2 run data modify storage mcc menu.selected_game2 set value "< Hide and seek >"
execute if score SELECTED_GAME mcc.MENU matches 3 run data modify storage mcc menu.selected_game2 set value "< Among Us >"
execute if score SELECTED_GAME mcc.MENU matches 4 run data modify storage mcc menu.selected_game1 set value "Spot the"
execute if score SELECTED_GAME mcc.MENU matches 4 run data modify storage mcc menu.selected_game2 set value "<  difference  >"
execute if score SELECTED_GAME mcc.MENU matches 5 run data modify storage mcc menu.selected_game2 set value "<  The dropper  >"

execute if score GAME_CD mcc.MENU matches 0 run data modify storage mcc menu.game_state set value '{"text":"[Start]"}'
execute if score GAME_CD mcc.MENU matches 1.. run data modify storage mcc menu.game_state set value '{"text":"[Start]","strikethrough":true}'

function mcc:menu/update_sign_macro {t1:'"Launcher"',t2:[{"storage":"mcc","nbt":"menu.selected_game1"}],t3:'[{"storage":"mcc","nbt":"menu.selected_game2"}]',t4:'[{"storage":"mcc","nbt":"menu.game_state","interpret":true}]'}

