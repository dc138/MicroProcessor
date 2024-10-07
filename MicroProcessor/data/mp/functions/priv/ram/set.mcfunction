#> mp:priv/ram/set
# Sets an element of the RAM. Resizes the RAM to at least that element
# IN mp:fun/ram.set.idx Index to set
# IN mp:fun/ram.set.val Value to set it to

execute store result score $current_len mp.var run data get storage mp:ram len
execute store result score $wanted_len mp.var run data get storage mp:fun ram.set.idx
execute store result score $val mp.var run data get storage mp:fun ram.set.val

tellraw @a[tag=mp_debug_msg] [{"text": "RAM", "bold": true}, {"text": " set idx ", "bold": false}, {"score":{"name": "$wanted_len", "objective": "mp.var"},"bold": false, "color": "aqua"}, {"text": " val ", "color": "white", "bold": false}, {"score":{"name": "$val","objective": "mp.var"},"bold": false, "color": "gold"}]

scoreboard players add $wanted_len mp.var 1

execute if score $wanted_len mp.var > $current_len mp.var run execute store result storage mp:fun ram.enlarge.len int 1 run scoreboard players get $wanted_len mp.var
execute if score $wanted_len mp.var > $current_len mp.var run function mp:priv/ram/enlarge

scoreboard players operation $current_len mp.var -= $wanted_len mp.var

data remove storage mp:var ram.copy
data modify storage mp:var ram.copy set from storage mp:ram state
data remove storage mp:var ram.copy2
data modify storage mp:var ram.copy2 set from storage mp:ram state

function mp:priv/ram/set.1
