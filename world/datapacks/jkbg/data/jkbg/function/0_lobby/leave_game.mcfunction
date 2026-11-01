# 玩家处理-初始/离开游戏/死亡
scoreboard players reset @s jkbg.player.death
scoreboard players set @s jkbg.player.leave_game 0
attribute @s camera_distance base set 0
effect clear @s glowing
clear @s
xp set @s 0 levels
xp set @s 0 points
