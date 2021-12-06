scoreboard players operation $wanted_len mp.var -= $current_len mp.var
execute store result score $i mp.var run data get storage mp:ram len

function mp:priv/ram/enlarge.2