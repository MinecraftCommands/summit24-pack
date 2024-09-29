

scoreboard players remove COUNTER_CD mcc.MENU 1

execute if score COUNTER_CD mcc.MENU matches ..0 store result score COUNTER_POS mcc.MENU run random value 0..17
execute if score COUNTER_CD mcc.MENU matches ..0 store result score COUNTER_SIZE mcc.MENU run random value 0..2

execute if score COUNTER_CD mcc.MENU matches ..0 store result score COUNTER_CD mcc.MENU run random value 1..25

execute if score COUNTER mcc.MENU matches ..10 run scoreboard players set COUNTER_POS mcc.MENU 4
execute if score COUNTER mcc.MENU matches ..10 run scoreboard players set COUNTER_SIZE mcc.MENU 1


execute if score SIGN_Y mcc.MENU matches 370..470 if score SIGN_X mcc.MENU matches 470..520 run scoreboard players add COUNTER mcc.MENU 1
execute if score SIGN_Y mcc.MENU matches 160..260 if score SIGN_X mcc.MENU matches 470..520 run scoreboard players set COUNTER mcc.MENU 0


data modify storage mcc screen.counter1 set value ["▫","▫","▫","▫"," ","□","□","□","□"]
data modify storage mcc screen.counter2 set value ["◻","◻","◻","◻"," ","▢","▢","▢","▢"]


data modify storage mcc screen.shape set value "□"
execute if score COUNTER_SIZE mcc.MENU matches 0 run data modify storage mcc screen.shape set value "▫"
execute if score COUNTER_SIZE mcc.MENU matches 1 run data modify storage mcc screen.shape set value "□"
execute if score COUNTER_SIZE mcc.MENU matches 2 run data modify storage mcc screen.shape set value "◻"

execute if score COUNTER_POS mcc.MENU matches 0 run data modify storage mcc screen.counter1[0] set from storage mcc screen.shape
execute if score COUNTER_POS mcc.MENU matches 1 run data modify storage mcc screen.counter1[1] set from storage mcc screen.shape
execute if score COUNTER_POS mcc.MENU matches 2 run data modify storage mcc screen.counter1[2] set from storage mcc screen.shape
execute if score COUNTER_POS mcc.MENU matches 3 run data modify storage mcc screen.counter1[3] set from storage mcc screen.shape
execute if score COUNTER_POS mcc.MENU matches 4 run data modify storage mcc screen.counter1[4] set from storage mcc screen.shape
execute if score COUNTER_POS mcc.MENU matches 5 run data modify storage mcc screen.counter1[5] set from storage mcc screen.shape
execute if score COUNTER_POS mcc.MENU matches 6 run data modify storage mcc screen.counter1[6] set from storage mcc screen.shape
execute if score COUNTER_POS mcc.MENU matches 7 run data modify storage mcc screen.counter1[7] set from storage mcc screen.shape
execute if score COUNTER_POS mcc.MENU matches 8 run data modify storage mcc screen.counter1[8] set from storage mcc screen.shape
execute if score COUNTER_POS mcc.MENU matches 9 run data modify storage mcc screen.counter2[0] set from storage mcc screen.shape
execute if score COUNTER_POS mcc.MENU matches 10 run data modify storage mcc screen.counter2[1] set from storage mcc screen.shape
execute if score COUNTER_POS mcc.MENU matches 11 run data modify storage mcc screen.counter2[2] set from storage mcc screen.shape
execute if score COUNTER_POS mcc.MENU matches 12 run data modify storage mcc screen.counter2[3] set from storage mcc screen.shape
execute if score COUNTER_POS mcc.MENU matches 13 run data modify storage mcc screen.counter2[4] set from storage mcc screen.shape
execute if score COUNTER_POS mcc.MENU matches 14 run data modify storage mcc screen.counter2[5] set from storage mcc screen.shape
execute if score COUNTER_POS mcc.MENU matches 15 run data modify storage mcc screen.counter2[6] set from storage mcc screen.shape
execute if score COUNTER_POS mcc.MENU matches 16 run data modify storage mcc screen.counter2[7] set from storage mcc screen.shape
execute if score COUNTER_POS mcc.MENU matches 17 run data modify storage mcc screen.counter2[8] set from storage mcc screen.shape
scoreboard players add COUNTER mcc.MENU 0
scoreboard players operation MAX_COUNTER mcc.MENU > COUNTER mcc.MENU


#small : 
# 115-135   188-208   260-280   334-354
# y = 375-415

#medium :
#
#y =

#big :
#
#y=355-460


#Display score :
data modify storage mcc macro.counter set value ""
data modify storage mcc temp.diff set value " < "
execute if score MAX_COUNTER mcc.MENU = COUNTER mcc.MENU run data modify storage mcc temp.diff set value " = "


function mcc:menu/update_sign_macro {t1:'"Counter"',t2:[{"score":{"name":"COUNTER","objective":"mcc.MENU"}},{"nbt":"temp.diff","storage":"mcc"},{"score":{"name":"MAX_COUNTER","objective":"mcc.MENU"}}],t3:'{"storage":"mcc","nbt":"screen.counter1[]","separator":" "}',t4:'{"storage":"mcc","nbt":"screen.counter2[]","separator":" "}'}