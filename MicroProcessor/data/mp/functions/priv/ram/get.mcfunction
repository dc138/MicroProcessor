#> mp:priv/ram/get
# Gets an element. Resizes the ram to at least that element to always return a valid value
# IN mp:fun/ram.get.idx Index to get
# OUT mp:fun/ram.get.val Value at that index

execute store result score $current_len mp.var run data get storage mp:ram len
execute store result score $wanted_len mp.var run data get storage mp:fun ram.get.idx
scoreboard players add $wanted_len mp.var 1

execute if score $wanted_len mp.var > $current_len mp.var run execute store result storage mp:fun ram.enlarge.len int 1 run scoreboard players get $wanted_len mp.var
execute if score $wanted_len mp.var > $current_len mp.var run function mp:priv/ram/enlarge

scoreboard players operation $current_len mp.var -= $wanted_len mp.var
data remove storage mp:var ram.copy
data modify storage mp:var ram.copy set from storage mp:ram state

function mp:priv/ram/get.1

data modify storage mp:fun ram.get.val set from storage mp:var ram.copy[-1]