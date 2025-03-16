scoreboard players remove #temp jkbg.int 1

# 找索引
execute store result score #uno.match jkbg.int run data modify storage jkbg:uno cards.temp.value set from storage jkbg:uno cards.temp.list[0]
# 找到，则输出index
execute if score #uno.match jkbg.int matches 0 run scoreboard players set #temp jkbg.int -1
execute if score #uno.match jkbg.int matches 0 store result storage jkbg:uno cards.temp.index int 1 run scoreboard players get #uno.index jkbg.int
# 没找到，继续循环
execute if score #uno.match jkbg.int matches 1 run scoreboard players add #uno.index jkbg.int 1
execute if score #uno.match jkbg.int matches 1 run data modify storage jkbg:uno cards.temp.value set from storage jkbg:uno cards.temp.value_
execute if score #uno.match jkbg.int matches 1 run data remove storage jkbg:uno cards.temp.list[0]

execute if score #temp jkbg.int matches 0.. run function jkbg:games/uno/player/play/yes_loop
