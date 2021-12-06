#declare storage mp:ram RAM storage
data merge storage mp:ram {state:[]}
data merge storage mp:ram {len:256}

scoreboard players set $i mp.var 256

function mp:priv/ram/load.loop.1

scoreboard players reset $i mp.var