# 取消准备
tellraw @s ["", {"text": "【JKの桌游】", "color": "green"}, {"text": "你已离开游戏区域，自动取消准备！", "color": "yellow"}]
scoreboard players set @s jkbg.player.ready 0
scoreboard players set @s jkbg.player.state 0
scoreboard players set @s jkbg.player.gametype 0
