# 玩家抓牌（一次）
function jkbg:games/uno/draw/server

execute as @a[scores={jkbg.player.id=1..}] if score @s jkbg.player.id = #uno.order jkbg.int run scoreboard players set @s jkbg.uno.draw 1

# 按照牌数进行显示
execute store result storage jkbg:uno cards.temp.mem int 1 run scoreboard players get @p[scores={jkbg.uno.draw=1}] jkbg.player.id
execute as @p[scores={jkbg.uno.draw=1}] run function jkbg:games/uno/draw/on_player with storage jkbg:uno cards.temp

scoreboard players reset * jkbg.uno.draw

# 下一位
execute if score #uno.state jkbg.int matches 2 if score #uno.cards.add jkbg.int matches 0 run function jkbg:games/uno/action_cards/next
