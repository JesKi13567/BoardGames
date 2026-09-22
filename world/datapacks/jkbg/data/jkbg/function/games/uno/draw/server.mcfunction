## 抓牌
# 随机抽
scoreboard players operation #temp jkbg.int = #uno.cards.all jkbg.int
execute store result storage jkbg:uno mem.random.max int 1 run scoreboard players remove #temp jkbg.int 1
function jkbg:games/lobby/random with storage jkbg:uno mem.random

# 从牌堆抓牌
execute store result storage jkbg:uno cards.temp.mem int 1 run function jkbg:games/lobby/random with storage jkbg:uno mem.random
function jkbg:games/uno/draw/from_random with storage jkbg:uno cards.temp

# 卡牌存储量
execute store result score #uno.cards.all jkbg.int run data get storage jkbg:uno cards.all

# 牌id（分数）
execute store result score #uno.this jkbg.int run data get storage jkbg:uno cards.this

# 系统出牌，直接给出结果
execute if score #uno.state jkbg.int matches 1 run function jkbg:games/uno/show/global
