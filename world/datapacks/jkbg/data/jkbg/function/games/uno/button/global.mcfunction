# as @e[type=interaction, tag=jkbg_uno_button]
# 调整用按钮（村规）
data remove entity @s attack
execute if data entity @s interaction run function jkbg:games/uno/button/press

## 游玩时
# 抓单牌后再出牌
# 抢出牌（出完全一样的两张牌）

## 结束时
# A 一人出完，结算所有人分数 B 所有人出完，按顺序
# 是否需要喊uno（若不喊或喊错需摸两张）
