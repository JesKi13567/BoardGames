# 出牌失败提示取消质疑
tellraw @s[scores={jkbg.uno.challenge=1}] ["", {translate: "jkbg.lobby.bg", color: "green"}, {translate: "jkbg.uno.module.challenge.cancel", color: "aqua"}]

# 打出牌标记
scoreboard players set #uno.yes jkbg.int 1

# 提示换颜色
playsound entity.villager.ambient player @s
tellraw @s ["", {translate: "jkbg.lobby.bg", color: "green"}, {translate: "jkbg.uno.wild.pick_color", color: "yellow"}]
