
playsound minecraft:block.copper_trapdoor.open block @a[distance=..20]

execute positioned ~4 ~14 ~-5 run function mcc:anim/with_context/close_local
execute positioned ~4 ~14 ~-2 run function mcc:anim/with_context/close_local
execute positioned ~4 ~14 ~1 run function mcc:anim/with_context/close_local
#execute positioned ~7 ~15 ~-4 run function mcc:anim/with_context/close_local

execute if predicate mcc:half positioned ~4 ~14 ~-5 run function mcc:anim/with_context/open_local
execute if predicate mcc:half positioned ~4 ~14 ~-2 run function mcc:anim/with_context/open_local
execute if predicate mcc:half positioned ~4 ~14 ~1 run function mcc:anim/with_context/open_local
#execute if predicate mcc:half positioned ~7 ~15 ~-4 run function mcc:anim/with_context/open_local