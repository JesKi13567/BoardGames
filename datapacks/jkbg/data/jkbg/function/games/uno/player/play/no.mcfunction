# 不匹配
playsound entity.villager.no player @s

# 出牌失败提示取消质疑
tellraw @s[scores={jkbg.uno.challenge=1}] ["", {text: "【桌游】", color: "green"}, {text: "你取消了质疑！", color: "aqua"}]

# 不可出的无用牌
execute if score #uno.play jkbg.int matches 500 run return fail

# 其他
execute if score #uno.cards.add jkbg.int matches 0 run tellraw @s ["", {text: "【桌游】", color: "green"}, {text: "不可出此牌！", color: "red"}]
execute if score #uno.cards.add jkbg.int matches 1.. if score #uno.id.num jkbg.int matches 12 run tellraw @s ["", {text: "【桌游】", color: "green"}, {text: "你必须打出 +2 或 +4 牌！", color: "red"}]
execute if score #uno.cards.add jkbg.int matches 1.. if score #uno.id.num jkbg.int matches 13 if score #uno.rule.draw_stack jkbg.int matches 1 run tellraw @s ["", {text: "【桌游】", color: "green"}, {text: "你必须打出 +4 牌！", color: "red"}]
execute if score #uno.cards.add jkbg.int matches 1.. if score #uno.id.num jkbg.int matches 13 unless score #uno.rule.draw_stack jkbg.int matches 1 run tellraw @s ["", {text: "【桌游】", color: "green"}, {text: "不可出此牌！", color: "red"}]
