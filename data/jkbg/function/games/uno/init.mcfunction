# 人数过多
execute if score #uno.players jkbg.int matches 11.. run tag @a[limit=10, sort=random, scores={jkbg.player.gametype=1, jkbg.player.ready=1}] add jkbg_uno_player
execute if score #uno.players jkbg.int matches 11.. run scoreboard players set @a[tag=!jkbg_uno_player, scores={jkbg.player.gametype=1, jkbg.player.ready=1}] jkbg.player.ready 0
tag @a remove jkbg_uno_player
# 准备中 -> 已参加
scoreboard players set @a[scores={jkbg.player.gametype=1, jkbg.player.ready=1}] jkbg.player.state 1
scoreboard players set @a[scores={jkbg.player.gametype=1}] jkbg.player.ready 0

data remove storage jkbg:uno cards
# 4*2*「1-9、S、R、+2」、4*「0」、4*「C、+4」，共108张
# 百位数 1~5 分别对应红蓝黄绿黑
data modify storage jkbg:uno cards.all set value [100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 513, 514, 513, 514, 513, 514, 513, 514]
execute store result score #uno.cards.all jkbg.int run data get storage jkbg:uno cards.all

# 开始（桌游每次只能开一种来显示记分板）
scoreboard objectives setdisplay sidebar jkbg.uno.order
scoreboard objectives setdisplay below_name jkbg.uno.cards
scoreboard objectives setdisplay list jkbg.uno.cards
scoreboard players reset #uno.cards.add jkbg.int
scoreboard players reset #uno.draw.test jkbg.int
scoreboard players reset #uno.reverse jkbg.int
scoreboard players reset #uno.player_loop jkbg.int
scoreboard players set #uno.state jkbg.int 0
scoreboard players set #uno.order jkbg.int 0
scoreboard players set #uno.cd jkbg.int 30

# 玩家初始
scoreboard players reset * jkbg.uno.order
scoreboard players reset * jkbg.uno.turn
scoreboard players set @a[scores={jkbg.player.gametype=1, jkbg.player.state=1}] jkbg.uno.color 0
scoreboard players set @a[scores={jkbg.player.gametype=1, jkbg.player.state=1}] jkbg.uno.turn 0
scoreboard players set @a[scores={jkbg.player.gametype=1, jkbg.player.state=1}] jkbg.uno.cards 0
clear @a[scores={jkbg.player.gametype=1, jkbg.player.state=1}]
scoreboard players reset #temp jkbg.int
execute as @a[scores={jkbg.player.gametype=1, jkbg.player.state=1}, sort=random] store result score @s jkbg.uno.order run scoreboard players add #temp jkbg.int 1

# 系统出牌
function jkbg:games/uno/draw/server
scoreboard players set #uno.state jkbg.int 1

# 玩家抽牌
scoreboard players set #uno.order jkbg.int 1
execute store result score #uno.players jkbg.int if entity @a[scores={jkbg.player.gametype=1, jkbg.player.state=1}]
scoreboard players operation #uno.players_ jkbg.int = #uno.players jkbg.int
scoreboard players operation #uno.players1 jkbg.int = #uno.players jkbg.int
function jkbg:games/uno/player/init
