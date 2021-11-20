data modify storage mp:ram state append from storage mp:consts numbers[0]

scoreboard players add $val mp.ram 1
scoreboard players remove $i mp.ram 1

execute if score $i mp.ram matches 0.. run function mp:priv/ram/load.loop.1