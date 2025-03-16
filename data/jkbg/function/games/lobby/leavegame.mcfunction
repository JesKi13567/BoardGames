# 离开游戏触发
scoreboard players reset @s jkbg.player.leave_game
scoreboard players set @s jkbg.player.gametype 0
tp @s @e[limit=1,type=marker,tag=jkbg_lobby]
#tellraw @s ["",{"text": "【JKの桌游】","color": "green"},{"text": "因退出游戏，你的状态已重置！","color": "yellow"}]
