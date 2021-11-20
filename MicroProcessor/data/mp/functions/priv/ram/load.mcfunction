scoreboard objectives add mp.ram dummy

scoreboard players set $val mp.ram 0
scoreboard players set $len mp.ram 256

data merge storage mp:ram {state:[]}

scoreboard players operation $i mp.ram = $len mp.ram

function mp:priv/ram/load.loop.1

data remove storage mp:ram val
scoreboard players reset $i mp.ram