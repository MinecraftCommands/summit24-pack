

#function mcc:menu/game/mob/remove_containement
schedule clear mcc:menu/game/recenter_mob

tp @e[tag=mcc.mob] ~ -10000 ~
kill @e[tag=mcc.mob]

