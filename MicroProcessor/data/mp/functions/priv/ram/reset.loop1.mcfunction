data modify storage mp:ram a append from storage mp:ram val

scoreboard players add $val mp.ram 1
scoreboard players remove $i mp.ram 1

execute if score $i mp.ram matches 0.. run function mp:priv/ram/reset.loop1