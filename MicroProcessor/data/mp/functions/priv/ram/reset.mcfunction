scoreboard players set $val mp.ram 0
scoreboard players set $len mp.ram 256

data merge storage mp:ram {a:[]}

scoreboard players operation $i mp.ram = $len mp.ram
execute store result storage mp:ram val int 1 run scoreboard players get $zero mp.const

function mp:priv/ram/reset.loop1

data remove storage mp:ram val
scoreboard players reset $i mp.ram