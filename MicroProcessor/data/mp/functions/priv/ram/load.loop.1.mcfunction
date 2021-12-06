data modify storage mp:ram state append from storage mp:consts numbers[0]

scoreboard players remove $i mp.var 1

execute if score $i mp.var matches 0.. run function mp:priv/ram/load.loop.1