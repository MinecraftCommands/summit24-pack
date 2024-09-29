

$summon minecraft:block_display ~ ~ ~6.5 {Tags:[mcc,mcc.display,new_layer],block_state:{Name:oak_slab},transformation:{left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],scale:[1.0,1.0,1.0],translation:$(base)}} 
$summon minecraft:block_display ~-0.5 ~ ~6.501 {Tags:[mcc,mcc.display,new_layer],block_state:{Name:oak_slab},transformation:{left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],scale:[1.0,1.0,1.0],translation:$(base)}}

$summon minecraft:block_display ~ ~ ~7.5 {Tags:[mcc,mcc.display,new_layer],block_state:{Name:oak_slab},transformation:{left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],scale:[1.0,1.0,1.0],translation:$(base)}} 
$summon minecraft:block_display ~-0.5 ~ ~7.501 {Tags:[mcc,mcc.display,new_layer],block_state:{Name:oak_slab},transformation:{left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],scale:[1.0,1.0,1.0],translation:$(base)}} 

$summon minecraft:block_display ~ ~ ~8.5 {Tags:[mcc,mcc.display,new_layer],block_state:{Name:oak_slab},transformation:{left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],scale:[1.0,1.0,1.0],translation:$(base)}} 
$summon minecraft:block_display ~-0.5 ~ ~8.501 {Tags:[mcc,mcc.display,new_layer],block_state:{Name:oak_slab},transformation:{left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],scale:[1.0,1.0,1.0],translation:$(base)}}

$tag @e[type=block_display,tag=new_layer] add layer$(layer)
tag @e[type=block_display] remove new_layer
