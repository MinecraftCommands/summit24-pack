# This function runs once when the data pack is loaded. This happens when the world/server starts, and every time "/reload" is ran.

# Each command goes on a separate line and they run one after each other

say Your pack has been loaded!

scoreboard objectives add CONST dummy
scoreboard objectives add mcc.VAR dummy
scoreboard objectives add mcc.DG dummy
scoreboard objectives add mcc.VEC dummy
scoreboard objectives add mcc.MENU dummy

scoreboard players set -1 CONST -1
scoreboard players set 2 CONST 2
scoreboard players set 60 CONST 60
scoreboard players set 86400 CONST 86400
scoreboard players set EYES CONST 1620
scoreboard players set ACC CONST 1000

scoreboard players set BASE_UNIX mcc.VAR 1725746400
scoreboard players set OFFSET_UNIX mcc.VAR 0
scoreboard players set DAY_OFFSET_UNIX mcc.VAR 0
scoreboard players add SERVER mcc.VAR 0


scoreboard players add STAIR_STATE mcc.VAR 0

#1 for instant, 
#2 for 1 step per tick
scoreboard players set RUN_MODE mcc.DG 1
scoreboard players set IS_RUNNING mcc.DG 0

scoreboard players add DISPLAY mcc.MENU 0
scoreboard players set DISPLAY_MOD mcc.MENU 5

scoreboard players add SCREEN_X mcc.MENU 0
scoreboard players add SCREEN_Y mcc.MENU 0

scoreboard players add COUNTER mcc.MENU 0
scoreboard players add COUNTER_MAX mcc.MENU 0
scoreboard players add COUNTER_POS mcc.MENU 0
scoreboard players add COUNTER_SIZE mcc.MENU 0
scoreboard players add COUNTER_CROSS mcc.MENU 0
scoreboard players add COUNTER_CD mcc.MENU 0

scoreboard players add COUNTER_CROSS mcc.MENU 0

