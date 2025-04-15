# 玩家初始抓牌
scoreboard players set #uno.cards.add jkbg.int 6
function jkbg:games/uno/draw/player_loop

# 手动玩家刷新
execute as @a[scores={jkbg.player.gametype=1, jkbg.player.state=1}] if score @s jkbg.uno.order = #uno.order jkbg.int run function jkbg:games/uno/player/inventory/playing
function jkbg:games/uno/next

# 循环
scoreboard players remove #uno.players_ jkbg.int 1
execute if score #uno.players_ jkbg.int matches 0 run scoreboard players set #uno.state jkbg.int 2
execute if score #uno.players_ jkbg.int matches 0 run scoreboard players set @p[scores={jkbg.player.gametype=1, jkbg.player.state=1, jkbg.uno.order=1}] jkbg.uno.turn 1
execute if score #uno.players_ jkbg.int matches 0 at @p[scores={jkbg.uno.turn=1}] run playsound entity.experience_orb.pickup player @s
execute if score #uno.players_ jkbg.int matches 1.. run schedule function jkbg:games/uno/player/init 2t replace
