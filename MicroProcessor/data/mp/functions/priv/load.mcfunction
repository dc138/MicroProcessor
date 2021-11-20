# MAIN LOAD FUNCTION

tellraw @a [{"text":"<< ","color": "white","bold": false},{"text":"M","color": "aqua","bold": true},{"text":"P","color": "dark_aqua","bold": true},{"text": " >> ","color": "white","bold": false},{"text": "Version ","color": "gray","bold": false},{"text": "v0.1 ","color": "white","bold": true},{"text": "by ","color": "gray","bold": false},{"text": "DarthChungo ","color": "white","bold": true},{"text": "enabled!","color": "gray","bold": false}]

# Precautions

gamerule maxCommandChainLength 999999999

# Constants

scoreboard objectives remove mp.const
scoreboard objectives add mp.const dummy

scoreboard players set $zero mp.const 0
scoreboard players set $one mp.const 1
scoreboard players set $two mp.const 2

# Modules

function mp:priv/ram/load
function mp:priv/ram/reset
