# 大厅
scoreboard players set #lobby.state jkbg.int 1

# 显示
execute as @e[tag=jkbg_lobby] run data modify entity @s view_range set value 0
execute as @e[type=item_display, tag=jkbg_uno_card] run data modify entity @s view_range set value 1
kill @e[tag=jkbg_uno_number]

# 地板
execute positioned -8 99 -8 run place template jkbg:lobby_ground

# 牌库
data remove storage jkbg:uno cards
# 百位数 1~5 分别对应红蓝黄绿黑，共108张
data modify storage jkbg:uno cards.all set value [100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 513, 514, 513, 514, 513, 514, 513, 514]
execute store result score #uno.cards.all jkbg.int run data get storage jkbg:uno cards.all

# 避免人数过多
tag @a[limit=8, sort=random, scores={jkbg.player.ready=1}] add jkbg_uno_temp
scoreboard players set @a[tag=!jkbg_uno_temp, scores={jkbg.player.ready=1}] jkbg.player.ready 0
tag @a remove jkbg_uno_temp

# 开始
scoreboard objectives setdisplay sidebar jkbg.uno.cards
scoreboard objectives setdisplay list jkbg.player.id
scoreboard players reset #uno.reverse jkbg.int
scoreboard players reset #uno.cards.add jkbg.int
scoreboard players reset #uno.cards.draw.show jkbg.int
scoreboard players reset #uno.id.order jkbg.int
scoreboard players set #uno.order jkbg.int 1

# 玩家初始
scoreboard players set @a jkbg.uno.color 0
execute as @a[scores={jkbg.player.ready=1}, sort=random] store result score @s jkbg.player.id run scoreboard players add #lobby.players.total jkbg.int 1
execute if score #lobby.players.total jkbg.int matches ..4 run function jkbg:games/uno/start/group/4
execute if score #lobby.players.total jkbg.int matches 5.. run function jkbg:games/uno/start/group/8
gamemode adventure @a[scores={jkbg.player.id=1..}]
execute as @a unless score @s jkbg.player.id matches 1.. run gamemode spectator @s

# 本局规则
tellraw @a ["", {text: "【桌游】", color: "green"}, {text: "本局 UNO 规则：\n", color: "yellow"}, {text: "抓牌层数叠加：", color: "yellow"}, {selector: "@e[type=marker, tag=jkbg_uno_rule_draw_stack, limit=1]", hover_event: {action: "show_text", value: ""}}, {text: "\n质疑：", color: "yellow"}, {selector: "@e[type=marker, tag=jkbg_uno_rule_challenge, limit=1]", hover_event: {action: "show_text", value: ""}}, {text: "\n结束方式：", color: "yellow"}, {selector: "@e[type=marker, tag=jkbg_uno_rule_end, limit=1]", hover_event: {action: "show_text", value: ""}}]
execute if score #lobby.players.total jkbg.int matches 2 run tellraw @a [{text: "双人模式：", color: "yellow"}, {text: "反转效果等同跳过。", color: "green"}]

# 玩家抽牌
scoreboard players operation #uno.players.init jkbg.int = #lobby.players.total jkbg.int
function jkbg:games/uno/player/init
