# as @e[type=interaction, tag=jkbg_uno_button]
# 调整用按钮（村规）
execute if data entity @s attack run function jkbg:games/uno/button/attack
execute if data entity @s interaction run function jkbg:games/uno/button/interaction

# 结束名次规则
# A 一人出完，结算所有人分数 B 所有人出完，按顺序
# +2+4分别叠加、混合叠加（仅+2->+4）
# 是否需要喊uno（若不喊或喊错需摸两张）
# 能否抢牌
# 能否对牌（出完全一样的两张牌）
# 最后一张能否功能牌
# 7（此人对任意其他人）、0（所有人依次）换牌（暂时不写）
