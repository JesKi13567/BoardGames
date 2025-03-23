## 抓牌
# 随机抽
scoreboard players operation #temp jkbg.int = #uno.cards.all jkbg.int
execute store result storage jk:bg mem.random.max int 1 run scoreboard players remove #temp jkbg.int 1
data modify storage jk:bg mem.random.min set value 0
function jkbg:games/lobby/random with storage jk:bg mem.random

# 从 cards.all 抓牌
execute store result storage jkbg:uno cards.temp.mem int 1 run function jkbg:games/lobby/random with storage jk:bg mem.random
function jkbg:games/uno/draw/from_random with storage jkbg:uno cards.temp

# 卡牌存储量
execute store result score #uno.cards.all jkbg.int run data get storage jkbg:uno cards.all

# 牌id（分数）
execute store result score #uno.this jkbg.int run data get storage jkbg:uno cards.this

# 系统出牌，直接给出结果
execute if score #uno.state jkbg.int matches 0 run function jkbg:games/uno/show
