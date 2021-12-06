# MAIN LOAD FUNCTION

# Precautions

gamerule maxCommandChainLength 1000000

# Constants and global scoreboards

#declare entity $i
#declare entity $temp

#declare storage mp:fun Function arguments storage

#declare storage mp:consts Constants storage object
data merge storage mp:consts {numbers:[0]}

#declare objective mp.var Variable scoreboard
scoreboard objectives add mp.var dummy

# Modules

function mp:priv/ram/load

# Finish

tellraw @a [{"text":"<< ","color": "white","bold": false},{"text":"M","color": "aqua","bold": true},{"text":"P","color": "dark_aqua","bold": true},{"text": " >> ","color": "white","bold": false},{"text": "Version ","color": "gray","bold": false},{"text": "v0.1 ","color": "white","bold": true},{"text": "by ","color": "gray","bold": false},{"text": "DarthChungo ","color": "white","bold": true},{"text": "enabled!","color": "gray","bold": false}]