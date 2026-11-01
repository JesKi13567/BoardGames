# 系统抓牌并执行
scoreboard players reset #uno.player_loop jkbg.int
scoreboard players operation #uno.order jkbg.int = #lobby.players.total jkbg.int

# 随机颜色
execute unless score #uno.this jkbg.int matches 513..514 run return 0

execute store result score #uno.id.color jkbg.int run random value 1..4
scoreboard players operation #uno.id.color jkbg.int *= #100 jkbg.int

scoreboard players operation #uno.id.num jkbg.int = #uno.this jkbg.int
scoreboard players operation #uno.id.num jkbg.int %= #100 jkbg.int

scoreboard players operation #uno.id.color jkbg.int += #uno.id.num jkbg.int
scoreboard players operation #uno.this jkbg.int = #uno.id.color jkbg.int
