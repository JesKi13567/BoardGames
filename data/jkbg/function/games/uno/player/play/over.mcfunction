# 玩家打完牌（待补充参数）
scoreboard players set @a jkbg.player.state 2
effect clear @a glowing
tellraw @a ["",{"text": "【JKの桌游】","color": "green"},{"selector": "@s"},{"text": " 出完了所有UNO牌！","color": "gold"}]
clear @a
execute at @s run playsound entity.player.levelup player @a[distance=..10]
