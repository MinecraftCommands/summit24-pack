# This function runs once when the data pack is loaded. This happens when the world/server starts, and every time "/reload" is ran.

# Each command goes on a separate line and they run one after each other

#say Your pack has been loaded!

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


scoreboard players add STAIR_STATE mcc.VAR 0

#1 for instant, 
#2 for 1 step per tick
scoreboard players set RUN_MODE mcc.DG 1
scoreboard players set IS_RUNNING mcc.DG 0

scoreboard players add DISPLAY mcc.MENU 0
scoreboard players set DISPLAY_MOD mcc.MENU 6
scoreboard players set MAX_PLAYER mcc.MENU -1
scoreboard players add SELECTED_GAME mcc.MENU 0
scoreboard players set SELECTED_GAME_MOD mcc.MENU 6
scoreboard players add GAME_CD mcc.MENU 0
scoreboard players set GAME_CD_SETTING mcc.MENU 80
scoreboard players add GAME_LAST_GT mcc.MENU 0
scoreboard players add PUFF_CLICK mcc.MENU 0


scoreboard players add SCREEN_X mcc.MENU 0
scoreboard players add SCREEN_Y mcc.MENU 0

scoreboard players add COUNTER mcc.MENU 0
scoreboard players add COUNTER_MAX mcc.MENU 0
scoreboard players add COUNTER_POS mcc.MENU 0
scoreboard players add COUNTER_POSY mcc.MENU 0

scoreboard players add COUNTER_CD mcc.MENU 0

scoreboard players add COUNTER_CROSS mcc.MENU 0


#No Glowing :(
#team add mcc.seker
#team modify mcc.seker color dark_purple

kill @e[tag=mcc.puff]

summon minecraft:item_display 30.4375 86.00 -15.55 {Tags:[mcc,mcc.puff],item:{id:pufferfish,count:1},transformation: {left_rotation: [-0.1478094f, 0.9890159f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.99999976f, 0.99999976f]}}