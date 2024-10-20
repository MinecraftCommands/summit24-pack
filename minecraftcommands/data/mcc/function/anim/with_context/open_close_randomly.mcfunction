
playsound minecraft:block.copper_trapdoor.open block @a[distance=..20]

execute positioned ~2 ~15 ~-4 run function mcc:anim/with_context/close_local
execute positioned ~7 ~15 ~2 run function mcc:anim/with_context/close_local
execute positioned ~2 ~15 ~2 run function mcc:anim/with_context/close_local
execute positioned ~7 ~15 ~-4 run function mcc:anim/with_context/close_local

execute if predicate mcc:half positioned ~2 ~15 ~-4 run function mcc:anim/with_context/open_local
execute if predicate mcc:half positioned ~7 ~15 ~2 run function mcc:anim/with_context/open_local
execute if predicate mcc:half positioned ~2 ~15 ~2 run function mcc:anim/with_context/open_local
execute if predicate mcc:half positioned ~7 ~15 ~-4 run function mcc:anim/with_context/open_local