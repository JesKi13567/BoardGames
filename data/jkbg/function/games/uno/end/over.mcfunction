# 玩家打完牌
tag @a[scores={jkbg.player.gametype=1,jkbg.player.state=1}] add jkbg_end
tellraw @a[tag=jkbg_end] ["",{"text": "【JKの桌游】","color": "green"},{"selector": "@s"},{"text": " 出完了所有UNO牌！","color": "gold"}]
execute at @s run playsound entity.player.levelup player @a[distance=..10]
