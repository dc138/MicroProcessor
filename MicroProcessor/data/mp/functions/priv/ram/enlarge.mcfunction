#> mp:priv/ram/enlarge
# Ensures that the ram is initialized to at least the provided size
# IN mp:fun/ram.enlarge.len lenght to enlarge

execute store result score $current_len mp.var run data get storage mp:ram len
execute store result score $wanted_len mp.var run data get storage mp:fun ram.enlarge.len

execute if score $wanted_len mp.var > $current_len mp.var run function mp:priv/ram/enlarge.1