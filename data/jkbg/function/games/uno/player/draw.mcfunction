# 玩家抓牌（一次）
function jkbg:games/uno/draw

execute as @a[scores={jkbg.uno.order=1..}] if score @s jkbg.uno.order = #uno.order jkbg.int run scoreboard players set @s jkbg.uno.draw 1
#tellraw @a [{"selector": "@p[scores={jkbg.uno.draw=1}]"}," -> ",{"storage":"jkbg:uno","nbt":"cards.this","color": "yellow"}]

# 按照牌数给予至背包
execute store result storage jkbg:uno cards.temp.mem int 1 run scoreboard players get @p[scores={jkbg.uno.draw=1}] jkbg.uno.order
execute as @p[scores={jkbg.uno.draw=1}] run function jkbg:games/uno/player/draw_ with storage jkbg:uno cards.temp
execute if score #uno.state jkbg.int matches 2 if score #uno.cards.add jkbg.int matches 0 as @p[scores={jkbg.uno.draw=1}] run tellraw @a[scores={jkbg.player.gametype=1,jkbg.player.state=1}] ["",{"text": "【JKの桌游】","color": "green"}," ",{"selector": "@s","color": "gold"}," ",{"text": "选择了抓牌...","color": "gray"}]

scoreboard players reset * jkbg.uno.draw

# 下一位
execute if score #uno.state jkbg.int matches 2 if score #uno.cards.add jkbg.int matches 0 run function jkbg:games/uno/next
