# 轮询 & 减少索引标数
execute store result storage jkbg:uno cards.temp.index int 1 run scoreboard players remove #temp jkbg.int 1

# 找到
function jkbg:games/uno/player/refresh_in_list with storage jkbg:uno cards.temp
function jkbg:games/uno/player/refresh_in_list_ with storage jkbg:uno cards.temp

# 循环
execute if score #temp jkbg.int matches 1.. run function jkbg:games/uno/player/refresh_
