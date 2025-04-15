# 离开游戏/死亡/游戏结束
scoreboard players reset @s jkbg.player.death
scoreboard players reset @s jkbg.player.temp
scoreboard players set @s jkbg.leave 0
scoreboard players set @s jkbg.player.leave_game 0
scoreboard players set @s jkbg.player.state 0
scoreboard players set @s jkbg.player.gametype 0
scoreboard players set @s jkbg.player.ready 0
effect clear @s
clear @s
tellraw @s[tag=!jkbg_end] ["", {"text": "【JKの桌游】", "color": "green"}, {"text": "因退出游戏/死亡，你的状态已重置！", "color": "yellow"}]

# uno
scoreboard players reset @s jkbg.uno.turn
scoreboard players reset @s jkbg.uno.order
scoreboard players set #uno.state jkbg.int 0
