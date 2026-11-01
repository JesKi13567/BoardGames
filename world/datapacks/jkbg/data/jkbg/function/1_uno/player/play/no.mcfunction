# 不匹配
playsound entity.villager.no player @s

# 出牌失败提示取消质疑
tellraw @s[scores={jkbg.uno.challenge=1}] ["", {translate: "jkbg.lobby.bg", color: "green"}, {translate: "jkbg.uno.module.challenge.cancel", color: "aqua"}]

# 不可出的无用牌
execute if score #uno.play jkbg.int matches 500 run return 0

# 其他
execute if score #uno.cards.add jkbg.int matches 0 run tellraw @s ["", {translate: "jkbg.lobby.bg", color: "green"}, {translate: "jkbg.uno.error.cannot_play", color: "red"}]
execute if score #uno.cards.add jkbg.int matches 1.. if score #uno.id.num jkbg.int matches 12 run tellraw @s ["", {translate: "jkbg.lobby.bg", color: "green"}, {translate: "jkbg.uno.error.need_draw2", color: "red"}]
execute if score #uno.cards.add jkbg.int matches 1.. if score #uno.id.num jkbg.int matches 13 if score #uno.rule.draw_stack jkbg.int matches 1 run tellraw @s ["", {translate: "jkbg.lobby.bg", color: "green"}, {translate: "jkbg.uno.error.need_draw4", color: "red"}]
execute if score #uno.cards.add jkbg.int matches 1.. if score #uno.id.num jkbg.int matches 13 if score #uno.rule.draw_stack jkbg.int matches 0 run tellraw @s ["", {translate: "jkbg.lobby.bg", color: "green"}, {translate: "jkbg.uno.error.cannot_play", color: "red"}]
