execute as @e[tag=mcc.display] run data merge entity @s {interpolation_duration:10,start_interpolation:0}
execute as @e[tag=mcc.display] run data modify entity @s transformation.translation set value [0.0,0.0,0.0]
