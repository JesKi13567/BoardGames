## 抓牌
# 随机抽
scoreboard players operation #temp jkbg.int = #uno.cards.all jkbg.int
execute store result storage jkbg:uno mem.random.max int 1 run scoreboard players remove #temp jkbg.int 1
function jkbg:0_lobby/random with storage jkbg:uno mem.random

# 从牌堆抓牌
execute store result storage jkbg:uno cards.temp.mem int 1 run function jkbg:0_lobby/random with storage jkbg:uno mem.random
function jkbg:1_uno/draw/from_random with storage jkbg:uno cards.temp

# 卡牌存储量
execute store result score #uno.cards.all jkbg.int run data get storage jkbg:uno cards.all
scoreboard players display name .uno.cards.all jkbg.player.id [{translate: "jkbg.uno.deck.remaining"}, {score: {name: "#uno.cards.all", objective: "jkbg.int"}, color: "green"}, {text: " (+", color: "yellow"}, {score: {name: "#uno.cards.dropped", objective: "jkbg.int"}, color: "yellow"}, {text: ")", color: "yellow"}]

# 牌id（分数）
execute store result score #uno.this jkbg.int run data get storage jkbg:uno cards.this

# 系统出牌，直接给出结果
execute if score #uno.state jkbg.int matches 1 run function jkbg:1_uno/show/global
