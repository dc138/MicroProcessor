scoreboard players add $i mp.var 1

execute store result storage mp:ram len int 1 run scoreboard players get $i mp.var
data modify storage mp:ram state append from storage mp:consts numbers[0]

scoreboard players remove $wanted_len mp.var 1
execute if score $wanted_len mp.var matches 1.. run function mp:priv/ram/enlarge.2