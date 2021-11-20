# MAIN LOAD FUNCTION

# Precautions

gamerule maxCommandChainLength 1000000

# MP function IOs

data merge storage mp:io {in:[0,0,0,0,0,0,0,0,0,0]}
data merge storage mp:io {out:[0,0,0,0,0,0,0,0,0,0]}

# Constants

data merge storage mp:consts {numbers:[0,1,2,3,4,5,6,7,8,9]}

# Modules

function mp:priv/ram/load

# Finish

tellraw @a [{"text":"<< ","color": "white","bold": false},{"text":"M","color": "aqua","bold": true},{"text":"P","color": "dark_aqua","bold": true},{"text": " >> ","color": "white","bold": false},{"text": "Version ","color": "gray","bold": false},{"text": "v0.1 ","color": "white","bold": true},{"text": "by ","color": "gray","bold": false},{"text": "DarthChungo ","color": "white","bold": true},{"text": "enabled!","color": "gray","bold": false}]