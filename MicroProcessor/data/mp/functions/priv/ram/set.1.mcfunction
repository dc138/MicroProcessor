data remove storage mp:var ram.copy[-1]
scoreboard players remove $current_len mp.var 1

execute if score $current_len mp.var matches 1.. run function mp:priv/ram/set.1