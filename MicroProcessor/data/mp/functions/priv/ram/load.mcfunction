#declare storage mp:ram RAM storage

function mp:priv/ram/clear

data modify storage mp:fun ram.enlarge.len set value 16
function mp:priv/ram/enlarge