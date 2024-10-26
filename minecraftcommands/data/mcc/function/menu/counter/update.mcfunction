


scoreboard players set TARGET_POSX mcc.MENU -1
execute if score SIGN_X mcc.MENU matches 260..310 run scoreboard players set TARGET_POSX mcc.MENU 0
execute if score SIGN_X mcc.MENU matches 365..415 run scoreboard players set TARGET_POSX mcc.MENU 1
execute if score SIGN_X mcc.MENU matches 470..520 run scoreboard players set TARGET_POSX mcc.MENU 2
execute if score SIGN_X mcc.MENU matches 575..625 run scoreboard players set TARGET_POSX mcc.MENU 3
execute if score SIGN_X mcc.MENU matches 680..730 run scoreboard players set TARGET_POSX mcc.MENU 4

scoreboard players set TARGET_POSY mcc.MENU -1
execute if score SIGN_Y mcc.MENU matches 360..460 run scoreboard players set TARGET_POSY mcc.MENU 0
execute if score SIGN_Y mcc.MENU matches 150..250 run scoreboard players set TARGET_POSY mcc.MENU 1

data modify storage mcc macro.screen_counter set value {x:0,y:0}
execute store result storage mcc macro.screen_counter.x int 1 run scoreboard players get TARGET_POSX mcc.MENU
execute store result storage mcc macro.screen_counter.y int 1 run scoreboard players get TARGET_POSY mcc.MENU

data modify storage mcc screen.shape set value "_"

execute if score TARGET_POSX mcc.MENU matches 0.. if score TARGET_POSY mcc.MENU matches 0.. run function mcc:menu/counter/macro with storage mcc macro.screen_counter

execute if data storage mcc {screen:{shape:"□"}} run scoreboard players add COUNTER mcc.MENU 1
execute if data storage mcc {screen:{shape:"x"}} run scoreboard players set COUNTER mcc.MENU 0
execute unless data storage mcc {screen:{shape:"_"}} run function mcc:menu/counter/count


scoreboard players add COUNTER mcc.MENU 0
scoreboard players operation MAX_COUNTER mcc.MENU > COUNTER mcc.MENU


#Display score :
data modify storage mcc macro.counter set value ""
data modify storage mcc temp.diff set value " < "
execute if score MAX_COUNTER mcc.MENU = COUNTER mcc.MENU run data modify storage mcc temp.diff set value " = "


function mcc:menu/update_sign_macro {t1:'"Counter"',t2:[{"score":{"name":"COUNTER","objective":"mcc.MENU"}},{"nbt":"temp.diff","storage":"mcc"},{"score":{"name":"MAX_COUNTER","objective":"mcc.MENU"}}],t3:'{"storage":"mcc","nbt":"screen.counter0[]","separator":" "}',t4:'{"storage":"mcc","nbt":"screen.counter1[]","separator":" "}'}