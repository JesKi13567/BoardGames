# 玩家初始抓牌
scoreboard players set #uno.cards.add jkbg.int 6
function jkbg:games/uno/draw/player_loop

# 手动玩家刷新
execute as @a[scores={jkbg.player.id=1..}] if score @s jkbg.player.id = #uno.order jkbg.int run function jkbg:games/uno/player/inventory/playing
scoreboard players add #uno.order jkbg.int 1

# 循环
scoreboard players remove #uno.players.init jkbg.int 1
execute if score #uno.players.init jkbg.int matches 0 run scoreboard players set #uno.state jkbg.int 1
execute if score #uno.players.init jkbg.int matches 0 run schedule function jkbg:games/uno/draw/server 2t replace
execute if score #uno.players.init jkbg.int matches 1.. run schedule function jkbg:games/uno/player/init 2t replace
