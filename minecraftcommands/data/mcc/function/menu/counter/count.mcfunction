
scoreboard players remove COUNTER_CD mcc.MENU 1

execute if score COUNTER_CD mcc.MENU matches ..0 if score COUNTER mcc.MENU matches ..99 store result score COUNTER_POS mcc.MENU run random value 1..3
execute if score COUNTER_CD mcc.MENU matches ..0 if score COUNTER mcc.MENU matches 100.. store result score COUNTER_POS mcc.MENU run random value 0..4
execute if score COUNTER_CD mcc.MENU matches ..0 if score COUNTER mcc.MENU matches ..200 store result score COUNTER_CD mcc.MENU run random value 1..25
execute if score COUNTER_CD mcc.MENU matches ..0 if score COUNTER mcc.MENU matches 200..500 store result score COUNTER_CD mcc.MENU run random value 1..3
execute if score COUNTER_CD mcc.MENU matches ..0 if score COUNTER mcc.MENU matches 501.. run scoreboard players set COUNTER_CD mcc.MENU 1

execute if score COUNTER mcc.MENU matches ..400 run scoreboard players set COUNTER_POSY mcc.MENU 0
execute if score COUNTER mcc.MENU matches 401.. store result score COUNTER_POSY mcc.MENU run random value 0..1


execute if score COUNTER mcc.MENU matches ..27 run scoreboard players set COUNTER_POS mcc.MENU 2

data modify storage mcc screen.counter0 set value ["_","_","_","_","_"]
data modify storage mcc screen.counter1 set value ["_","_","_","_","_"]


execute if function mcc:menu/counter/draw_x run data modify storage mcc screen.counter0[0] set value "x"
execute if function mcc:menu/counter/draw_x run data modify storage mcc screen.counter0[1] set value "x"
execute if function mcc:menu/counter/draw_x run data modify storage mcc screen.counter0[2] set value "x"
execute if function mcc:menu/counter/draw_x run data modify storage mcc screen.counter0[3] set value "x"
execute if function mcc:menu/counter/draw_x run data modify storage mcc screen.counter0[4] set value "x"

execute if function mcc:menu/counter/draw_x run data modify storage mcc screen.counter1[0] set value "x"
execute if function mcc:menu/counter/draw_x run data modify storage mcc screen.counter1[1] set value "x"
execute if function mcc:menu/counter/draw_x run data modify storage mcc screen.counter1[2] set value "x"
execute if function mcc:menu/counter/draw_x run data modify storage mcc screen.counter1[3] set value "x"
execute if function mcc:menu/counter/draw_x run data modify storage mcc screen.counter1[4] set value "x"

execute if score COUNTER_POSY mcc.MENU matches 0 if score COUNTER_POS mcc.MENU matches 0 run data modify storage mcc screen.counter0[0] set value "□"
execute if score COUNTER_POSY mcc.MENU matches 0 if score COUNTER_POS mcc.MENU matches 1 run data modify storage mcc screen.counter0[1] set value "□"
execute if score COUNTER_POSY mcc.MENU matches 0 if score COUNTER_POS mcc.MENU matches 2 run data modify storage mcc screen.counter0[2] set value "□"
execute if score COUNTER_POSY mcc.MENU matches 0 if score COUNTER_POS mcc.MENU matches 3 run data modify storage mcc screen.counter0[3] set value "□"
execute if score COUNTER_POSY mcc.MENU matches 0 if score COUNTER_POS mcc.MENU matches 4 run data modify storage mcc screen.counter0[4] set value "□"

execute if score COUNTER_POSY mcc.MENU matches 1 if score COUNTER_POS mcc.MENU matches 0 run data modify storage mcc screen.counter1[0] set value "□"
execute if score COUNTER_POSY mcc.MENU matches 1 if score COUNTER_POS mcc.MENU matches 1 run data modify storage mcc screen.counter1[1] set value "□"
execute if score COUNTER_POSY mcc.MENU matches 1 if score COUNTER_POS mcc.MENU matches 2 run data modify storage mcc screen.counter1[2] set value "□"
execute if score COUNTER_POSY mcc.MENU matches 1 if score COUNTER_POS mcc.MENU matches 3 run data modify storage mcc screen.counter1[3] set value "□"
execute if score COUNTER_POSY mcc.MENU matches 1 if score COUNTER_POS mcc.MENU matches 4 run data modify storage mcc screen.counter1[4] set value "□"
