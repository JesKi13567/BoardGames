# 任意游戏结束
# 手动结束用↓
tag @s add jkbg_end
tellraw @s[tag=jkbg_end] ["",{"text": "【JKの桌游】","color": "green"},{"text": "管理员手动刷新了当前游戏！","color": "aqua"}]

# 其他处理照常
function jkbg:games/lobby/leavegame
tag @s remove jkbg_end
