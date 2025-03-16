# 执行者为服务器
#scoreboard players add #uno.draw.test jkbg.int 1
#tellraw @a ["count: ",{"score": {"name": "#uno.draw.test","objective": "jkbg.int"},"color": "green"}]

## 抓牌
# 随机抽
scoreboard players set #random_min jkbg.int 0
scoreboard players operation #random_max jkbg.int = #uno.cards jkbg.int
scoreboard players remove #random_max jkbg.int 1
function jkbg:games/lobby/random

# 从 cards.all 抓牌
execute store result storage jkbg:uno cards.temp.mem int 1 run scoreboard players get #random jkbg.int
function jkbg:games/uno/draw_ with storage jkbg:uno cards.temp

# 卡牌存储量
execute store result score #uno.cards jkbg.int run data get storage jkbg:uno cards.all

# 牌id（分数）
execute store result score #uno.this jkbg.int run data get storage jkbg:uno cards.this

# 系统出牌，直接给出结果
execute if score #uno.state jkbg.int matches 0 run function jkbg:games/uno/show
