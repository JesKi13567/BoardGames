# 任意游戏结束
tag @s add jkbg_end
tellraw @s[tag=jkbg_end] ["", {"text": "【JKの桌游】", "color": "green"}, {"text": "游戏结束！", "color": "aqua"}]

# 其他处理照常
function jkbg:games/lobby/reset
tag @s remove jkbg_end
