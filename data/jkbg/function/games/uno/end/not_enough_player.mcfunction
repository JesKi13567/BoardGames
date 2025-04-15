# 玩家退出
say 有玩家退出，游戏结束！
scoreboard players set #uno.state jkbg.int 0
scoreboard players set @a[scores={jkbg.player.gametype=1}] jkbg.player.state 0
