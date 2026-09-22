# 出牌失败提示取消质疑
tellraw @s[scores={jkbg.uno.challenge=1}] ["", {text: "【桌游】", color: "green"}, {text: "你取消了质疑！", color: "aqua"}]

# 打出牌标记
scoreboard players set #uno.yes jkbg.int 1

# 提示换颜色
playsound entity.villager.ambient player @s
tellraw @s ["", {text: "【桌游】", color: "green"}, {text: "黑牌使用前需先选择颜色。", color: "yellow"}]
