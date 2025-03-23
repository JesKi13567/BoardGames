# 调整用按钮/背包（村规）
# 结束名次规则
# A 一人出完，结算所有人分数 B 所有人出完，按顺序
# +2+4分别叠加、混合叠加（仅+2->+4）
# 是否需要喊uno（若不喊或喊错需摸两张）
# 能否抢牌
# 能否对牌（出完全一样的两张牌）
# 最后一张能否功能牌
# 7（此人对任意其他人）、0（所有人依次）换牌（暂时不写）

# 卡牌能否轮回
execute unless score #uno.rule.samsara jkbg.int matches 1 run item replace entity @s inventory.10 with apple[custom_data={jkbg:["uno","rule","samsara"]},custom_name='[{"text": "卡牌轮回","color": "green","italic": false}]',lore=['[{"text": "当前：","italic": false},{"text": "未启用","color": "red"}]']]
execute if score #uno.rule.samsara jkbg.int matches 1 run item replace entity @s inventory.10 with golden_apple[custom_data={jkbg:["uno","rule","samsara"]},custom_name='[{"text": "卡牌轮回","color": "green","italic": false}]',lore=['[{"text": "当前：","italic": false},{"text": "已启用","color": "gold"}]']]

scoreboard players set @s jkbg.player.temp 1
