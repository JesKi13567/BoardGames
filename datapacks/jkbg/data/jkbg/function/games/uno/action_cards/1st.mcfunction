# 系统抓牌并执行
scoreboard players reset #uno.player_loop jkbg.int
scoreboard players operation #uno.order jkbg.int = #lobby.players.total jkbg.int
execute if score #uno.this jkbg.int matches 513..514 run function jkbg:games/uno/action_cards/1st_color
