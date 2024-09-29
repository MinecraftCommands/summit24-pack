
#Sign hitboix is weird : offset 125 from the wall, top coords : 780, down coord : 280

#TODO get menu coords from storage

#solo : 6 -37 83
#server : 30 83 15
scoreboard players set X mcc.MENU 30000
scoreboard players set Y mcc.MENU 83000
scoreboard players set Z mcc.MENU 15000



scoreboard players add Z mcc.MENU 105


scoreboard players set DIR mcc.MENU 0
scoreboard players set SIZE_X mcc.MENU 0
scoreboard players set SIZE_Y mcc.MENU 1000


scoreboard players set NX mcc.VEC 0
scoreboard players set NY mcc.VEC 0
scoreboard players set NZ mcc.VEC 0

scoreboard players operation PX mcc.VEC = X mcc.MENU
scoreboard players operation PY mcc.VEC = Y mcc.MENU
scoreboard players operation PZ mcc.VEC = Z mcc.MENU



execute if score DIR mcc.MENU matches 0..1 run scoreboard players set NZ mcc.VEC 1000
execute if score DIR mcc.MENU matches 2..3 run scoreboard players set NX mcc.VEC 1000

data modify storage temp Pos set from entity @s Pos
execute store result score DX mcc.VEC run data get storage temp Pos[0] 1000
execute store result score DY mcc.VEC run data get storage temp Pos[1] 1000
execute store result score DZ mcc.VEC run data get storage temp Pos[2] 1000
scoreboard players operation DY mcc.VEC += EYES CONST

#TODO grab a temp entity somewhere and do that based on uuid
summon marker ~ ~ ~ {Tags:[m]}
#execute positioned ^ ^ ^1 as @e[tag=m] run tp ~ ~ ~
execute positioned ^ ^ ^1 summon minecraft:marker run data modify storage temp Pos set from entity @s Pos
#data modify storage temp Pos set from entity @e[tag=m,limit=1] Pos
kill @e[type=marker]

execute store result score VX mcc.VEC run data get storage temp Pos[0] 1000
execute store result score VY mcc.VEC run data get storage temp Pos[1] 1000
execute store result score VZ mcc.VEC run data get storage temp Pos[2] 1000
scoreboard players operation VX mcc.VEC -= DX mcc.VEC
scoreboard players operation VY mcc.VEC -= DY mcc.VEC
scoreboard players operation VZ mcc.VEC -= DZ mcc.VEC
scoreboard players operation VY mcc.VEC += EYES CONST

#tellraw @a ["D : ", {"score":{"objective":"mcc.VEC","name":"DX"}}, " ", {"score":{"objective":"mcc.VEC","name":"DY"}}, " ", {"score":{"objective":"mcc.VEC","name":"DZ"}}]
#tellraw @a ["V : ", {"score":{"objective":"mcc.VEC","name":"VX"}}, " ", {"score":{"objective":"mcc.VEC","name":"VY"}}, " ", {"score":{"objective":"mcc.VEC","name":"VZ"}}]

scoreboard players set DOT mcc.VEC 0
scoreboard players operation TDOT mcc.VEC = NX mcc.VEC
scoreboard players operation TDOT mcc.VEC *= VX mcc.VEC
scoreboard players operation TDOT mcc.VEC /= ACC CONST
scoreboard players operation DOT mcc.VEC += TDOT mcc.VEC

scoreboard players operation TDOT mcc.VEC = NY mcc.VEC
scoreboard players operation TDOT mcc.VEC *= VY mcc.VEC
scoreboard players operation TDOT mcc.VEC /= ACC CONST
scoreboard players operation DOT mcc.VEC += TDOT mcc.VEC

scoreboard players operation TDOT mcc.VEC = NZ mcc.VEC
scoreboard players operation TDOT mcc.VEC *= VZ mcc.VEC
scoreboard players operation TDOT mcc.VEC /= ACC CONST
scoreboard players operation DOT mcc.VEC += TDOT mcc.VEC

# if dot == 0, the plane and the line are parallel, so we assume no intersection
#But we put that condition later because there is no need to stop calculation here
#execute if score DOT mcc.VEC matches 0 run say Error, parallel.

#offset
scoreboard players operation PX mcc.VEC -= DX mcc.VEC
scoreboard players operation PY mcc.VEC -= DY mcc.VEC
scoreboard players operation PZ mcc.VEC -= DZ mcc.VEC

#Normal and offset dot product
scoreboard players set D mcc.VEC 0
scoreboard players operation PX mcc.VEC *= NX mcc.VEC
scoreboard players operation PX mcc.VEC /= ACC CONST
scoreboard players operation D mcc.VEC += PX mcc.VEC

scoreboard players operation PY mcc.VEC *= NY mcc.VEC
scoreboard players operation PY mcc.VEC /= ACC CONST
scoreboard players operation D mcc.VEC += PY mcc.VEC

scoreboard players operation PZ mcc.VEC *= NZ mcc.VEC
scoreboard players operation PZ mcc.VEC /= ACC CONST
scoreboard players operation D mcc.VEC += PZ mcc.VEC

#Math wise you wouldn't need the nexts ACC operations, but because of accuracy, you need to
scoreboard players operation D mcc.VEC *= ACC CONST
scoreboard players operation D mcc.VEC /= DOT mcc.VEC

#Given the solution d, find the corresponding point on the line
scoreboard players operation VX mcc.VEC *= D mcc.VEC
scoreboard players operation VX mcc.VEC /= ACC CONST
scoreboard players operation VY mcc.VEC *= D mcc.VEC
scoreboard players operation VY mcc.VEC /= ACC CONST
scoreboard players operation VZ mcc.VEC *= D mcc.VEC
scoreboard players operation VZ mcc.VEC /= ACC CONST
scoreboard players operation DX mcc.VEC += VX mcc.VEC
scoreboard players operation DY mcc.VEC += VY mcc.VEC
scoreboard players operation DZ mcc.VEC += VZ mcc.VEC


#Debug cursor
#execute if data entity @s SelectedItem.Count run summon minecraft:marker ~ ~ ~ {Tags:[block,init]}
#execute store result entity @e[tag=block,tag=init,limit=1] Pos[0] double 0.001 run scoreboard players get DX mcc.VEC
#execute store result entity @e[tag=block,tag=init,limit=1] Pos[1] double 0.001 run scoreboard players get DY mcc.VEC
#execute store result entity @e[tag=block,tag=init,limit=1] Pos[2] double 0.001 run scoreboard players get DZ mcc.VEC
#execute as @e[tag=init,limit=1] at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1
#kill @e[tag=init]


scoreboard players operation DX mcc.VEC -= X mcc.MENU
scoreboard players operation DY mcc.VEC -= Y mcc.MENU
scoreboard players operation DZ mcc.VEC -= Z mcc.MENU

scoreboard players set TARGET_SIGN mcc.MENU 0
execute if score DIR mcc.MENU matches 0..1 run scoreboard players operation SIGN_X mcc.MENU = DX mcc.VEC
execute if score DIR mcc.MENU matches 1 run scoreboard players operation SIGN_X mcc.MENU *= -1 CONST

execute if score DIR mcc.MENU matches 2..3 run scoreboard players operation SIGN_X mcc.MENU = DZ mcc.VEC
execute if score DIR mcc.MENU matches 2 run scoreboard players operation SIGN_X mcc.MENU *= -1 CONST
scoreboard players operation SIGN_Y mcc.MENU = DY mcc.VEC

#If the cursor is outside the panel, then the player is not targeting
execute if score SIGN_X mcc.MENU matches 0.. if score SIGN_X mcc.MENU <= SIZE_X mcc.MENU if score SIGN_Y mcc.MENU matches 0.. if score SIGN_Y mcc.MENU <= SIZE_Y mcc.MENU run scoreboard players set TARGET_SIGN mcc.MENU 1

#If the player is not facing the correct direction
execute if score DIR mcc.MENU matches 0 unless score DZ mcc.VEC matches 0 run scoreboard players set TARGET_SIGN mcc.MENU 0
execute if score DIR mcc.MENU matches 1 unless score DZ mcc.VEC matches -1 run scoreboard players set TARGET_SIGN mcc.MENU 0
execute if score DIR mcc.MENU matches 2 unless score DX mcc.VEC matches 0 run scoreboard players set TARGET_SIGN mcc.MENU 0
execute if score DIR mcc.MENU matches 3 unless score DX mcc.VEC matches -1 run scoreboard players set TARGET_SIGN mcc.MENU 0

execute if score DOT mcc.VEC matches 0 run scoreboard players set TARGET_SIGN mcc.MENU 0

#Fixing for sign coordinate : 
scoreboard players remove SIGN_Y mcc.MENU 280
scoreboard players operation SIGN_Y mcc.MENU *= 2 CONST