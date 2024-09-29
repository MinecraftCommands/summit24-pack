
execute at @s run function mcc:menu/get_coords

scoreboard players set DELTA mcc.MENU 0

execute if score DISPLAY mcc.MENU matches 4 if score SIGN_Y mcc.MENU matches 725.. if score SIGN_X mcc.MENU matches 910.. run scoreboard players set DELTA mcc.MENU 1
execute if score DISPLAY mcc.MENU matches 4 if score SIGN_Y mcc.MENU matches 725.. if score SIGN_X mcc.MENU matches ..90 run scoreboard players set DELTA mcc.MENU -1

execute unless score DISPLAY mcc.MENU matches 4 if score SIGN_Y mcc.MENU matches 725.. if score SIGN_X mcc.MENU matches 500.. run scoreboard players set DELTA mcc.MENU 1
execute unless score DISPLAY mcc.MENU matches 4 if score SIGN_Y mcc.MENU matches 725.. if score SIGN_X mcc.MENU matches ..499 run scoreboard players set DELTA mcc.MENU -1

scoreboard players operation DISPLAY mcc.MENU += DELTA mcc.MENU



scoreboard players operation DISPLAY mcc.MENU %= DISPLAY_MOD mcc.MENU

execute if score DISPLAY mcc.MENU matches 0 run data modify block 6 -37 83 front_text.messages set value ['{"text":"<    ?    >","clickEvent":{"action":"run_command","value":"function mcc:menu/update_sign"}}', '""', '""', '""']


#execute if score DISPLAY mcc.MENU matches 0 run function mcc:menu/update_sign_macro {t1:'"Cursor"',t2:{"score":{"name":"SIGN_X","objective":"mcc.MENU"}},t3:{"score":{"name":"SIGN_Y","objective":"mcc.MENU"}},t4:'""'}

tag @s add self
execute if score DISPLAY mcc.MENU matches 0 run function mcc:menu/update_sign_macro {t1:'"Players"',t2:'{"selector":"@a[tag=self]"}',t3:'{"selector":"@n[type=player,tag=!self]"}',t4:'{"selector":"@a[tag=!self,sort=furthest,limit=1]"}'}
tag @a remove self

execute if score DISPLAY mcc.MENU matches 1 store result score NB mcc.VAR if entity @a
execute if score DISPLAY mcc.MENU matches 1 store result score NBE mcc.VAR if entity @e
#TODO grab max number of players somewhere
execute if score DISPLAY mcc.MENU matches 1 run function mcc:menu/update_sign_macro {t1:'"Online"',t2:[{"text":"Players : "},{"score":{"name":"NB","objective":"mcc.VAR"}}],t3:'[{"text":"Entities : "},{"score":{"name":"NBE","objective":"mcc.VAR"}}]',t4:'[{"text":"Max : "},{"score":{"name":"NB_MAX","objective":"mcc.VAR"}}]'}


execute if score DISPLAY mcc.MENU matches 2 run function mcc:menu/time/update

execute if score DISPLAY mcc.MENU matches 3 run function mcc:menu/counter/update


execute if score DISPLAY mcc.MENU matches 4 if score SIGN_Y mcc.MENU matches 650.. run scoreboard players remove SCREEN_Y mcc.MENU 1
execute if score DISPLAY mcc.MENU matches 4 if score SIGN_Y mcc.MENU matches ..300 run scoreboard players add SCREEN_Y mcc.MENU 1

execute if score DISPLAY mcc.MENU matches 4 if score SIGN_X mcc.MENU matches 700.. run scoreboard players add SCREEN_X mcc.MENU 4
execute if score DISPLAY mcc.MENU matches 4 if score SIGN_X mcc.MENU matches ..300 run scoreboard players remove SCREEN_X mcc.MENU 4

execute if score DISPLAY mcc.MENU matches 4 run function mcc:menu/draw_image
execute if score DISPLAY mcc.MENU matches 4 run function mcc:menu/update_sign_macro_special with storage mcc menu.screen
