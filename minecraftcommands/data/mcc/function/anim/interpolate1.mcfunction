
execute as @e[tag=mcc.display] run data merge entity @s {interpolation_duration:10,start_interpolation:0}

execute as @e[tag=mcc.display,tag=layer1] run data modify entity @s transformation.translation set value [4.5,0.0,0.0]
execute as @e[tag=mcc.display,tag=layer2] run data modify entity @s transformation.translation set value [3.5,0.0,0.0]
execute as @e[tag=mcc.display,tag=layer3] run data modify entity @s transformation.translation set value [2.5,0.0,0.0]
execute as @e[tag=mcc.display,tag=layer4] run data modify entity @s transformation.translation set value [1.5,0.0,0.0]
execute as @e[tag=mcc.display,tag=layer5] run data modify entity @s transformation.translation set value [0.5,0.0,0.0]
execute as @e[tag=mcc.display,tag=layer6] run data modify entity @s transformation.translation set value [-0.5,0.0,0.0]
execute as @e[tag=mcc.display,tag=layer7] run data modify entity @s transformation.translation set value [-1.5,0.0,0.0]
execute as @e[tag=mcc.display,tag=layer8] run data modify entity @s transformation.translation set value [-2.5,0.0,0.0]
execute as @e[tag=mcc.display,tag=layer9] run data modify entity @s transformation.translation set value [-3.5,0.0,0.0]
execute as @e[tag=mcc.display,tag=layer10] run data modify entity @s transformation.translation set value [-4.5,0.0,0.0]
